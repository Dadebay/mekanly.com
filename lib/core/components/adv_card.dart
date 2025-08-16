import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import '../../utils/extensions.dart';
import 'adv_logo.dart';
import 'app_text.dart';

class AdvCard extends StatelessWidget {
  const AdvCard({
    super.key,
    this.imgUrl,
    this.logo,
    this.title,
  });
  final String? imgUrl;
  final String? title;
  final String? logo;

  @override
  Widget build(BuildContext context) {
    final width = context.mediaQuery.size.width - 8.w;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(4, 0, 4, 4).w,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4).r,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: const Radius.circular(4).r,
                  ),
                  child: Stack(
                    children: [
                      CustomNetworkImage(
                        imageUrl: imgUrl,
                        size: const Size(double.infinity, 207),
                        memCache: CustomMemCache(
                          height: 207.withDevicePixel(context),
                          width: width.toInt().withDevicePixel(context),
                        ),
                      ),
                      Positioned(
                        top: 14,
                        left: 11,
                        child: AdvLogo(
                          imageUrl: logo,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -5,
          left: 0,
          right: 0,
          child: Container(
            margin: const EdgeInsets.fromLTRB(4, 0, 4, 0).w,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
              color: ColorName.ads1,
            ),
            padding: const EdgeInsets.only(
              left: 7,
              top: 1,
              right: 7,
              bottom: 3,
            ).w,
            child: AppText.s9w400LbM(
              title ?? '',
              color: ColorName.white,
            ),
          ),
        ),
      ],
    );
  }
}
