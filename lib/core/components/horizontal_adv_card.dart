import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../utils/extensions.dart';
import 'adv_logo.dart';
import 'app_text.dart';

class HorizontalAdvCard extends StatelessWidget {
  const HorizontalAdvCard({
    super.key,
    this.imgUrl,
    this.logo,
    this.title,
    this.color,
  });
  final String? imgUrl;
  final String? logo;
  final String? title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: AspectRatio(
            aspectRatio: 157 / 207,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: const Radius.circular(5).r,
                  ),
                  child: Stack(
                    children: [
                      AspectRatio(
                        aspectRatio: 157 / 200,
                        child: CustomNetworkImage(
                          imageUrl: imgUrl,
                          memCache: CustomMemCache(
                            height: 200.withDevicePixel(context),
                            // width: 157.withDevicePixel(context),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 7,
                        left: 8,
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
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
              color: color ?? ColorName.ads1,
            ),
            padding: const EdgeInsets.only(
              left: 7,
              top: 1,
              right: 7,
              bottom: 3,
            ).w,
            child: AppText.s9w400LbM(
              title!,
              color: ColorName.white,
            ),
          ),
        ),
      ],
    );
  }
}
