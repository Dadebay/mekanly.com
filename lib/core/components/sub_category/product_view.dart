import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import '../../../features/favorites/fav_product_view.dart';
import '../../../features/search/search_view.dart';
import '../../../localization/extensions.dart';
import '../../../product/constants/app_colors.dart';
import '../../../product/constants/app_dimensions.dart';

import '../../../product/constants/constants.dart';
import '../../../remote/repositories/business_profile/product_cubit.dart';
import '../../../remote/repositories/favorite/favorite_repository.dart';
import '../loading_indicator.dart';
import '../product_card.dart';
import '../product_search_bar.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({
    super.key,
    required this.categoryId,
    required this.title,
  });

  final int categoryId;
  final String title;

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final ScrollController _scrollController = ScrollController();

  final FavoriteService favoriteService = FavoriteService();

  bool _isInitialDataLoaded = false;

  void _loadInitialData() {
    context.read<ProductCubit>().fetchProducts(widget.categoryId);
  }

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 100) {
      final state = context.read<ProductCubit>().state;
      if (state is ProductLoaded && state.hasMore) {
        context.read<ProductCubit>().fetchProducts(widget.categoryId);
      }
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_isInitialDataLoaded) {
      _loadInitialData();
      _isInitialDataLoaded = true;
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
        backgroundColor: ColorName.main,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.appBarContent,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        FavProductView(categoryId: widget.categoryId)),
              );
            },
            child: Container(
              margin: EdgeInsets.only(right: AppDimensions.spacingExtraLarge),
              child: Assets.icons.favbizpr.svg(
                package: 'gen',
              ),
            ),
          ),
        ],
        title: Text(
          widget.title,
          style: const TextStyle(
            color: AppColors.appBarContent,
            fontSize: 18,
            fontWeight: FontWeight.w400,
            fontFamily: StringConstants.roboto,
          ),
        ),
      ),
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          if (state is ProductLoading && state is! ProductLoaded) {
            return Center(child: LoadingIndicator.circle());
          } else if (state is ProductError) {
            return Center(
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
            );
          } else if (state is ProductLoaded) {
            return CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverToBoxAdapter(
                  child: ProductSearchBar(
                    onSearchTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchView(
                            // ignore: lines_longer_than_80_chars
                            categoryIds: [widget.categoryId],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppDimensions.spacingLarge,
                    vertical: AppDimensions.spacingLarge,
                  ),
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        if (index < state.products.length) {
                          final product = state.products[index];
                          return ProductCard(
                            product: product,
                            toggleFavoriteItem: () async {
                              try {
                                await favoriteService.toggleFavorite(
                                  context: context,
                                  favoritableId: product.id,
                                  favoritableType: 'Shop',
                                );
                                // ignore: use_build_context_synchronously
                                context
                                    .read<ProductCubit>()
                                    .updateProductFavoriteStatus(
                                      product.id,
                                      !product.favorited,
                                    );
                              } catch (e) {
                                debugPrint('Error toggling favorite: $e');
                              }
                            },
                          );
                        }
                        return Center(child: LoadingIndicator.circle());
                      },
                      childCount:
                          state.products.length + (state.hasMore ? 1 : 0),
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: AppDimensions.spacingExtraLarge,
                      mainAxisSpacing: AppDimensions.spacingExtraLarge,
                      childAspectRatio: AppDimensions.productCardAspectRatio,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                    child: SizedBox(height: AppDimensions.spacingXXX)),
              ],
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
