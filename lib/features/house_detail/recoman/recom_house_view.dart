// ignore_for_file: deprecated_member_use, use_build_context_synchronously

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../../../core/components/app_text.dart' show AppText;
import '../../../core/components/loading_indicator.dart';
import '../../../product/constants/constants.dart';
import '../../../product/transitions/custom_page_route.dart';
import '../../../remote/repositories/business_profile/product_cubit.dart';
import '../../../remote/repositories/favorite/favorite_repository.dart';
import '../../../remote/repositories/recomandation_house/recom_house_repozitory.dart';
import '../../../utils/api_provider.dart';
import '../house_detail_view.dart';

class RecommendedHousesSection extends StatefulWidget {
  const RecommendedHousesSection({super.key, required this.houseId});

  final int houseId;

  @override
  State<RecommendedHousesSection> createState() => _RecommendedHousesSectionState();
}

class _RecommendedHousesSectionState extends State<RecommendedHousesSection> {
  late final RecommendationProvider _provider;

  @override
  void initState() {
    super.initState();
    final dio = Dio();
    _provider = RecommendationProvider(HouseRepository(dio));

    _provider.fetchRecommendations(houseId: widget.houseId);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _provider,
      child: Consumer<RecommendationProvider>(
        builder: (context, provider, _) {
          if (provider.isLoading) {
            return Center(
              child: LoadingIndicator.circle(),
            );
          }

          if (provider.error != null) {
            return Padding(
              padding: EdgeInsets.all(12.w),
              child: Text('Error: ${provider.error}'),
            );
          }

          if (provider.recommendations.isEmpty) {
            return const SizedBox.shrink();
          }

          return SizedBox(
            height: ((MediaQuery.of(context).size.width * 0.35 * 198) / 131) + 12.h,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              scrollDirection: Axis.horizontal,
              itemCount: provider.recommendations.length,
              separatorBuilder: (_, __) => SizedBox(width: 12.w),
              itemBuilder: (context, index) {
                return HouseCard(house: provider.recommendations[index]);
              },
            ),
          );
        },
      ),
    );
  }
}

class HouseCard extends StatefulWidget {
  const HouseCard({super.key, required this.house});
  final HouseEntity house;

  @override
  State<HouseCard> createState() => _HouseCardState();
}

class _HouseCardState extends State<HouseCard> {
  final PageController _controller = PageController(keepPage: false);
  final ValueNotifier<int> _pageNotifier = ValueNotifier<int>(0);
  final FavoriteService favoriteService = FavoriteService();
  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    isFavorite = widget.house.favorited ?? false;
  }

  String _formatDate(DateTime? date) {
    if (date == null) {
      return '';
    }

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final createdAtDate = DateTime(date.year, date.month, date.day);

    if (createdAtDate.isAtSameMomentAs(today)) {
      return 'Şu gün'; // Today
    } else if (createdAtDate.isAtSameMomentAs(today.subtract(const Duration(days: 1)))) {
      return 'Dün'; // Yesterday
    } else {
      return DateFormat('dd.MM.yyyy').format(date); // Format as DD.MM.YYYY
    }
  }

  Future<void> toggleFavoriteItem(BuildContext context) async {
    try {
      await favoriteService.toggleFavorite(
        context: context,
        favoritableId: widget.house.id,
        favoritableType: 'House',
      );
      setState(() {
        isFavorite = !isFavorite;
      });

      context.read<ProductCubit>().updateProductFavoriteStatus(
            widget.house.id,
            isFavorite,
          );
    } catch (e) {
      debugPrint('Error toggling favorite: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.35;
    const aspect = 131 / 198;

    return InkWell(
      onTap: () {
        final imgs = widget.house.images?.map((e) => e.url).toList();
        final data = HouseDetailRoute(
          imgUrl: imgs,
          id: widget.house.id,
          type: 'House',
          favorited: widget.house.favorited,
        );
        Navigator.push(
          context,
          // ignore: inference_failure_on_function_invocation
          CustomPageRoute.slide(HouseDetailView.builder(context, data)),
        );
      },
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: width),
        child: AspectRatio(
          aspectRatio: aspect,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9.r),
              border: Border.all(width: 1.w, color: const Color(0xFFDDDDDD)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 3.2,
                  color: Colors.black.withOpacity(0.1),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 65,
                  child: Stack(
                    children: [
                      AspectRatio(
                        aspectRatio: 131 / 121,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.r),
                            topRight: Radius.circular(8.r),
                          ),
                          child: PageView.builder(
                            controller: _controller,
                            itemCount: widget.house.images?.length ?? 1,
                            onPageChanged: (value) => _pageNotifier.value = value,
                            itemBuilder: (context, index) {
                              // ignore: use_if_null_to_convert_nulls_to_bools
                              final imgUrl = (widget.house.images?.isNotEmpty == true) ? widget.house.images![index % widget.house.images!.length].url : null;
                              return Image.network(
                                ApiProvider().baseUrl + (imgUrl ?? ''),
                                fit: BoxFit.cover,
                                errorBuilder: (_, __, ___) => _buildPlaceholder(),
                              );
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: GestureDetector(
                          onTap: () => toggleFavoriteItem(context),
                          child: isFavorite ? Assets.icons.tazefav.svg(package: 'gen') : Assets.icons.icFavoriteDarkFill.svg(package: 'gen'),
                        ),
                      ),
                      if ((widget.house.images?.length ?? 0) > 1)
                        Positioned(
                          bottom: 6,
                          left: 0,
                          right: 0,
                          child: ValueListenableBuilder<int>(
                            valueListenable: _pageNotifier,
                            builder: (_, page, __) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  widget.house.images!.length,
                                  (index) => AnimatedContainer(
                                    duration: const Duration(milliseconds: 300),
                                    width: index == (page % widget.house.images!.length) ? 6.w : 4.w,
                                    height: index == (page % widget.house.images!.length) ? 6.w : 4.w,
                                    margin: EdgeInsets.symmetric(horizontal: 2.w),
                                    decoration: BoxDecoration(
                                      color: index == (page % widget.house.images!.length) ? Colors.white : Colors.white60,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 42,
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: 8,
                      right: 1,
                      top: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText.s14w400BdM(
                          widget.house.name ?? 'Kwartira',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: const Color.fromARGB(255, 34, 34, 34),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          fontFamily: StringConstants.roboto,
                        ),
                        2.boxH,
                        AppText.s14w400BdM(
                          _formatDate(widget.house.createdAt),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 117, 117, 117),
                          fontFamily: StringConstants.roboto,
                        ),
                        2.boxH,
                        AppText.s14w400BdM(
                          widget.house.location?.parentName ?? '',
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 117, 117, 117),
                          fontFamily: StringConstants.roboto,
                        ),
                        2.boxH,
                        AppText.s14w400BdM(
                          widget.house.price?.formatPrice() ?? 'TMT',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 34, 34, 34),
                          fontFamily: StringConstants.roboto,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPlaceholder() {
    return Container(
      color: Colors.grey[300],
      child: const Center(child: Icon(Icons.image, color: Colors.grey)),
    );
  }
}

extension Box on num {
  SizedBox get boxH => SizedBox(height: toDouble().h);
  SizedBox get boxW => SizedBox(width: toDouble().w);
}

extension PriceFormatting on String {
  String formatPrice() {
    final numValue = double.tryParse(this) ?? 0;
    return '${numValue.toStringAsFixed(0)} TMT';
  }
}
