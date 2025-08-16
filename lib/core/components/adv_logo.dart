import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../utils/extensions.dart';

class AdvLogo extends StatelessWidget {
  const AdvLogo({super.key, this.imageUrl, this.size});
  final String? imageUrl;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null) return const SizedBox.shrink();
    return DecoratedBox(
      decoration: BoxDecoration(
        color: ColorName.white,
        borderRadius: BorderRadius.circular(90).r,
        gradient: const LinearGradient(
          colors: [
            ColorName.blue384c,
            ColorName.yellowF6ca,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2).w,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(90).r,
          child: CustomNetworkImage(
            imageUrl: imageUrl,
            size: size ?? const Size(30, 30),
            memCache: CustomMemCache(
              // height: (size?.height == null)
              //     ? 30.withDevicePixel(context)
              //     : size!.height.toInt().withDevicePixel(context),
              width: (size?.width == null)
                  ? 30.withDevicePixel(context)
                  : size!.width.toInt().withDevicePixel(context),
            ),
          ),
        ),
      ),
    );
  }
}
