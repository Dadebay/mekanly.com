import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import '../../features/business_porfile_detail/business_porfile_detail_view.dart';
import '../../product/constants/constants.dart';
import '../../product/transitions/custom_page_route.dart';
import '../../remote/entities/business_profile/business_profile_entity.dart';
import '../../utils/extensions.dart';
import '../../utils/api_provider.dart';
import 'app_text.dart';

class BusinessProfileCard extends StatelessWidget {
  const BusinessProfileCard({
    super.key,
    this.profile,
  });

  final BusinessProfileEntity? profile;

  @override
  Widget build(BuildContext context) {
    if (profile == null || profile?.id == null) return const SizedBox.shrink();
    final brand = profile?.brand ?? '';
    final desc = profile?.briefDescription ?? '';
    final count = profile?.productCount ?? '';
    final logoUrl = profile?.logo ?? '';
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          // ignore: inference_failure_on_function_invocation
          CustomPageRoute.slide(
            BusinessProfileDetailView.builder(context, profile!.id!),
          ),
        );
      },
      child: Container(
        constraints: BoxConstraints(
          maxHeight: 86.w,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 14).w,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: ColorName.notifyShadow,
            ),
            borderRadius: BorderRadius.circular(5).r,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.horizontal(
                  left: const Radius.circular(5).r,
                ),
                child: SizedBox(
                  width: 84.w,
                  height: 86.w,
                  // child: CustomNetworkImage(
                  //   imageUrl: logoUrl,
                  //   memCache: CustomMemCache(
                  //     height: 86.w.toInt().withDevicePixel(context),
                  //   ),
                  // ),
                  child: CachedNetworkImage(
                    imageUrl: ApiProvider().baseUrl + logoUrl,
                    width: 84.w,
                    height: 86.w,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                      width: 84.w,
                      height: 86.w,
                      alignment: Alignment.center,
                      child: const SizedBox.shrink(),
                    ),
                    errorWidget: (context, url, error) => Container(
                      width: 84.w,
                      height: 86.w,
                      color: Colors.grey.shade200,
                      alignment: Alignment.center,
                    ),
                    memCacheHeight: 86.w.toInt(),
                    cacheKey: logoUrl,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.s12w400BdS(
                        brand,
                        color: ColorName.darkGrey,
                        fontFamily: StringConstants.roboto,
                      ),
                      8.boxH,
                      AppText.s10w400LbS(
                        desc,
                        color: const Color(0xff717171),
                        fontFamily: StringConstants.roboto,
                        maxLines: 2,
                      ),
                      8.boxH,
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 221, 221, 221),
                          ),
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white,
                        ),
                        child: Text(
                          'Bildiriş ($count)',
                          style: const TextStyle(
                            fontSize: 9,
                            fontFamily: StringConstants.roboto,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff717171),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
