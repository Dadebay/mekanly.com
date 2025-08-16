import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../../core/components/app_text.dart';
import '../../../localization/extensions.dart';
import '../../../utils/extensions.dart';
import 'image_item.dart';

class ImagePickerWidget extends StatelessWidget {
  const ImagePickerWidget({super.key, required this.onTap, this.pickedImages});
  final VoidCallback onTap;
  final List<ImageItem>? pickedImages;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: DottedBorder(
        borderType: BorderType.RRect,
        dashPattern: const [
          12,
          6,
        ],
        strokeWidth: 2.w,
        radius: const Radius.circular(10),
        color: const Color(0xff6A6A6A),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16).w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.icons.icCamera.svg(package: 'gen'),
                12.boxW,
                AppText.s14w400BdM(
                  pickedImages?.isEmpty ?? true
                      ? context.translation.suratgos
                      // ignore: lines_longer_than_80_chars
                      : '${pickedImages?.length ?? 0} ${context.translation.suratgosuldy}',
                  fontWeight: FontWeight.w500,
                  fontSize: 15.sp,
                  color: const Color(0xff6A6A6A),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
