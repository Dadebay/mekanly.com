import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../../core/components/app_text.dart';
import '../../../product/constants/constants.dart';
import '../../../product/transitions/custom_page_route.dart'; // NEW
import '../../../remote/repositories/favorite/favorite_repository.dart';
import '../../../utils/extensions.dart';
import '../../house_detail/house_detail_view.dart'; // NEW
import '../bloc/product_cubit.dart/business_product_detail_cubit.dart';
import '../business_porfile_detail_view.dart'; // NEW
import '../models/business_product_model.dart';
import 'business_prifile_carousel_slider.dart';

class MainBusinessProfileItem extends StatefulWidget {
  const MainBusinessProfileItem({super.key, this.productData});
  final ProductBusinessProfile? productData;

  @override
  State<MainBusinessProfileItem> createState() =>
      _MainBusinessProfileItemState();
}

class _MainBusinessProfileItemState extends State<MainBusinessProfileItem> {
  late bool _isFavorite;
  final FavoriteService _favoriteService = FavoriteService();

  @override
  void initState() {
    super.initState();
    _isFavorite = widget.productData?.favorited ?? false;
  }

  Future<void> _toggleFavorite() async {
    if (widget.productData?.id == null) return;

    try {
      await _favoriteService.toggleFavorite(
        context: context,
        favoritableId: widget.productData!.id!,
        favoritableType: widget.productData?.type == 'house' ? 'House' : 'Shop',
      );

      setState(() {
        _isFavorite = !_isFavorite;
      });

      context.read<BusinessProfileProductCubit>().updateProductFavoriteStatus(
            widget.productData!.id!,
            _isFavorite,
          );
    } catch (e) {
      // Handle error, e.g., show a toast
      debugPrint('Error toggling favorite: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = context.mediaQuery.size.width;
    return InkWell(
      onTap: () {
        if (widget.productData?.id == null) {
          return;
        }

        if (widget.productData?.type == "house") {
          final imgs = widget.productData?.images
              ?.map((e) => e.url)
              .toList(); // Use .url for ProductImageBusiness
          final data = HouseDetailRoute(
            imgUrl: imgs,
            id: widget.productData!.id,
            type: widget.productData!.type,
            favorited: widget.productData?.favorited,
          );
          Navigator.push(
            context,
            CustomPageRoute.slide(HouseDetailView.builder(context, data)),
          );
        } else if (widget.productData?.type == "product") {
          // Assuming there's a ProductDetailView or similar
          // For now, I'll navigate to BusinessProfileDetailView with the product ID
          // You might need to adjust this to a dedicated ProductDetailView
          Navigator.push(
            context,
            CustomPageRoute.slide(BusinessProfileDetailView.builder(
                context, widget.productData!.id!)),
          );
        }
      },
      borderRadius: BorderRadius.circular(11).r,
      child: Container(
        width: width,
        decoration: BoxDecoration(
          border: Border.all(color: ColorName.notifyShadow, width: 1.w),
          borderRadius: BorderRadius.circular(11).r,
          gradient: widget.productData!.vip!
              ? const LinearGradient(
                  colors: [Color(0xFFfde89b), Color(0xFFffffff)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                )
              : null,
        ),
        child: Column(
          children: [
            Flexible(
              flex: 70,
              child: Stack(
                children: [
                  if (widget.productData?.images != null && widget.productData!.images!.isNotEmpty)
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(11).r,
                        topRight: const Radius.circular(11).r,
                      ),
                      child: BusinessProfileCarouselSlider(
                        imgUrls: widget.productData?.images,
                      ),
                    )
                  else // No image available
                    Container(
                      color: const Color(0xFFEEEEEE), // Set color directly
                      child: ClipRRect( // Added ClipRRect here to ensure borderRadius
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(11).r,
                          topRight: const Radius.circular(11).r,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.image, // Placeholder icon
                            size: 50.w,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  if (widget.productData!.luxeStatus ==
                      true) // Check luxe status first
                    Positioned(
                      top: 8,
                      left: 8, // Top-left position
                      child: SizedBox(
                        child: Assets.icons.luxee.svg(
                            package: 'gen'), // Assuming a 'lux' icon exists
                      ),
                    )
                  // ignore: use_if_null_to_convert_nulls_to_bools
                  else if (widget.productData!.vip ==
                      true) // Then check vip status
                    Positioned(
                      top: 8,
                      left: 8, // Top-left position
                      child: SizedBox(
                        child: Assets.icons.vip.svg(package: 'gen'),
                      ),
                    ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: GestureDetector(
                      // Changed to GestureDetector
                      onTap: _toggleFavorite, // Added onTap
                      child: SizedBox(
                        height: 20.w,
                        width: 20.w,
                        child: _isFavorite // Dynamic icon based on _isFavorite
                            ? Assets.icons.icFavoriteDarkFill
                                .svg(package: 'gen') // Filled heart
                            : Assets.icons.tazefav
                                .svg(package: 'gen'), // Empty heart
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.s16w400BdL(
                    widget.productData?.name ?? '',
                    fontFamily: StringConstants.roboto,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  //4.boxH,
                  AppText.s14w400BdM(
                    widget.productData?.description ?? '',
                    fontFamily: StringConstants.roboto,
                    fontSize: 12.sp,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    color: ColorName.addressDate,
                  ),
                  //4.boxH,
                  AppText.s14w400BdM(
                    '${widget.productData?.price ?? ''} TMT',
                    fontSize: 15.sp,
                    fontFamily: StringConstants.roboto,
                  ),
                ],
              ),
            ),
            // Flexible(
            //   flex: 30,
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(
            //       vertical: 2,
            //       horizontal: 8,
            //     ),
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         4.boxH,
            //         Align(
            //           alignment: Alignment.topLeft,
            //           child: AppText.s14w400BdM(
            //             'Kwartira',
            //             //widget.house?.name ?? '',
            //             fontFamily: StringConstants.roboto,
            //             fontWeight: FontWeight.w400,
            //             fontSize: 12.sp,
            //             color: const Color(0xFF222222),
            //             textAlign: TextAlign.left,
            //           ),
            //         ),
            //         //4.boxH,
            //         Align(
            //           alignment: Alignment.topLeft,
            //           child: AppText.s14w400BdM(
            //             'Gyssagly satlyk jay',
            //             //widget.house?.description ?? '',
            //             fontFamily: StringConstants.roboto,
            //             fontSize: 10.sp,
            //             fontWeight: FontWeight.w400,
            //             softWrap: true,
            //             color: const Color(0xFF757575),
            //             textAlign: TextAlign.left,
            //           ),
            //         ),
            //         //4.boxH,
            //         Align(
            //           alignment: Alignment.topLeft,
            //           child: AppText.s14w400BdM(
            //             '400000 TMT',
            //             //'${widget.house?.price ?? ''} TMT',
            //             fontSize: 12.sp,
            //             fontFamily: StringConstants.roboto,
            //             fontWeight: FontWeight.w400,
            //             color: const Color(0xFF222222),
            //             textAlign: TextAlign.left,
            //           ),
            //         ),
            //         4.boxH,
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
