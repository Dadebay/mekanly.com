import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import '../../core/components/loading_indicator.dart';
import '../../core/components/product_card.dart';
import '../../localization/extensions.dart';
import '../../product/constants/app_colors.dart';
import '../../product/constants/app_dimensions.dart';
import '../../product/constants/constants.dart';
import '../../remote/header.dart';
import '../../remote/in_memory_token.dart';
import '../../remote/repositories/business_profile/product_cubit.dart';
import '../../remote/repositories/business_profile/product_model.dart';
import '../../remote/repositories/favorite/favorite_repository.dart';
import '../../utils/api_provider.dart';
import '../../utils/extensions.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key, this.categoryIds});

  final List<int>? categoryIds;

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final FavoriteService favoriteService = FavoriteService();
  final TextEditingController _searchController = TextEditingController();
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: ApiProvider().baseUrl,
      headers: AppHttpHeaders.commonHeaders,
    ),
  )..interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          final token = InMemoryToken.instance.token;
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          return handler.next(options);
        },
      ),
    );

  List<Product> _searchResults = [];
  bool _isLoading = false;
  String? _errorMessage;

  Future<void> _performSearch(String query) async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      if (query.isEmpty) {
        setState(() {
          _searchResults = [];
          _isLoading = false;
          _errorMessage = 'Please enter a search term.';
        });
        return;
      }

      // ignore: inference_failure_on_function_invocation
      final queryParameters = {
        'search': query,
        'limit': 10,
        'offset': 0,
      };

      if (widget.categoryIds != null && widget.categoryIds!.isNotEmpty) {
        queryParameters['categories'] = jsonEncode(widget.categoryIds);
        print('Categories: ${jsonEncode(widget.categoryIds)}');
      }

      final response = await _dio.get(
        '/api/v2/business/filter',
        queryParameters: queryParameters,
      );
      ;

      if (response.statusCode == 200) {
        List<dynamic> data;
        if (response.data is Map<String, dynamic>) {
          final responseData = response.data as Map<String, dynamic>;
          data = responseData['data'] as List<dynamic>;
        } else if (response.data is List<dynamic>) {
          data = response.data as List<dynamic>;
        } else {
          data = [];
        }

        setState(() {
          _searchResults = data.map((json) => Product.fromJson(json as Map<String, dynamic>)).toList();
        });
      } else {
        setState(() {
          _errorMessage = 'Failed to load search results: ${response.statusCode}';
        });
      }
    } on DioException catch (e) {
      setState(() {
        _errorMessage = 'Error: ${e.message}\nResponse: ${e.response?.data}';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorName.main,
        title: TextField(
          cursorColor: ColorName.main,
          controller: _searchController,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(
              left: 20,
              bottom: 10,
              top: 10,
              right: 10,
            ),
            hintText: context.translation.search,
            hintStyle: context.textTheme.bodyMedium?.copyWith(
              fontFamily: StringConstants.roboto,
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
              color: const Color(0xff6A6A6A),
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(10),
              child: GestureDetector(
                child: Assets.icons.icSearchDark.svg(
                  package: 'gen',
                ),
              ),
            ),
            prefixIconConstraints: const BoxConstraints(
              minWidth: 20,
              minHeight: 20,
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(46).w,
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(46).w,
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(46).w,
              borderSide: BorderSide.none,
            ),
          ),
          style: TextStyle(
            fontFamily: StringConstants.roboto,
            fontWeight: FontWeight.w400,
            fontSize: 16.sp,
            color: const Color(0xff6A6A6A),
          ),
          onSubmitted: _performSearch,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.appBarContent),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: _isLoading
          ? Center(child: LoadingIndicator.circle())
          : _errorMessage != null
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.icons.onmyok.svg(
                        package: 'gen',
                      ),
                      SizedBox(height: AppDimensions.spacingXXL),
                      Text(
                        context.translation.not_found,
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColors.greyText,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              : _searchResults.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.icons.onmyok.svg(
                            package: 'gen',
                          ),
                          SizedBox(height: AppDimensions.spacingXXL),
                          Text(
                            context.translation.not_found,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: AppColors.greyText,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )
                  : GridView.builder(
                      padding: EdgeInsets.all(AppDimensions.spacingLarge),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: AppDimensions.spacingExtraLarge,
                        mainAxisSpacing: AppDimensions.spacingExtraLarge,
                        childAspectRatio: AppDimensions.productCardAspectRatio,
                      ),
                      itemCount: _searchResults.length,
                      itemBuilder: (context, index) {
                        final product = _searchResults[index];
                        return ProductCard(
                          product: product,
                          toggleFavoriteItem: () async {
                            try {
                              await favoriteService.toggleFavorite(
                                context: context,
                                favoritableId: product.id,
                                favoritableType: 'Shop',
                              );
                              context.read<ProductCubit>().updateProductFavoriteStatus(
                                    product.id,
                                    !product.favorited,
                                  );
                            } catch (e) {
                              debugPrint('Error toggling favorite: $e');
                            }
                          },
                        );
                      },
                    ),
    );
  }
}
