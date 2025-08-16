import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../../core/components/app_text.dart';
import '../../../product/constants/constants.dart';
import '../../../product/transitions/custom_page_route.dart';
import '../../../utils/extensions.dart';
import '../../business_porfile_detail/business_porfile_detail_view.dart';
import '../../house_detail/house_detail_view.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({
    super.key,
    required this.name,
    this.description,
    this.price,
    this.imageUrl,
    this.locationName,
    this.locationParent,
    this.categoryName,
    this.roomNumber,
    this.floorNumber,
    this.propertyType,
    this.repairType,
    this.viewed,
    this.commentCount,
    this.isLuxe = false,
    this.isVip = false,
    this.bronNumber,
    this.username,
    this.userPhone,
    this.id,
    this.images,
    this.type,
    this.favorited,
  });
  final int? id;
  final String? name;
  final String? description;
  final double? price;
  final String? imageUrl;
  final String? locationName;
  final String? locationParent;
  final String? categoryName;
  final String? roomNumber;
  final String? floorNumber;
  final String? propertyType;
  final String? repairType;
  final String? viewed;
  final String? commentCount;
  final bool isLuxe;
  final bool isVip;
  final String? bronNumber;
  final String? username;
  final String? userPhone;
  final List<dynamic>? images;
  final String? type;
  final bool? favorited;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (id == null) return;
        if (type == 'house') {
          final imgs = images?.map((e) => e['original'] as String?).toList();
          final data = HouseDetailRoute(
            imgUrl: imgs,
            id: id,
            type: type,
            favorited: favorited,
          );
          Navigator.push(
            context,
            // ignore: inference_failure_on_function_invocation
            CustomPageRoute.slide(HouseDetailView.builder(context, data)),
          );
        } else {
          Navigator.push(
            context,
            // ignore: inference_failure_on_function_invocation
            CustomPageRoute.slide(
              BusinessProfileDetailView.builder(context, id!),
            ),
          );
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        constraints: BoxConstraints(
          maxHeight: 106.w,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7).r,
            color: ColorName.white,
            boxShadow: [
              BoxShadow(
                color: ColorName.black.withValues(alpha: 0.25),
                blurRadius: 2.5,
              ),
            ],
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.horizontal(
                  left: const Radius.circular(7).r,
                ),
                child: SizedBox(
                  height: 106.w,
                  width: 106.w,
                  child: CustomNetworkImage(
                    imageUrl: imageUrl,
                    memCache: CustomMemCache(
                      height: 106.w.toInt().withDevicePixel(context),
                      width: 106.w.toInt().withDevicePixel(context),
                    ),
                  ),
                ),
              ),
              10.boxW,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    6.boxH,
                    AppText.s14w400BdM(
                      name ?? '',
                      fontFamily: StringConstants.roboto,
                    ),
                    2.boxH,
                    AppText.s10w400LbS(
                      '${locationParent ?? ''}/${locationName ?? ''}',
                      color: const Color(0xff717171),
                      fontFamily: StringConstants.roboto,
                      maxLines: 1,
                    ),
                    2.boxH,
                    AppText.s10w400LbS(
                      description ?? '',
                      color: const Color(0xff717171),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      fontFamily: StringConstants.roboto,
                    ),
                    6.boxH,
                    AppText.s14w400BdM(
                      price != null ? '${price!.toStringAsFixed(2)} TMT' : '',
                      color: ColorName.black,
                      fontFamily: StringConstants.roboto,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
