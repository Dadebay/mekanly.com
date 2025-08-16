import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/components/app_text.dart';
import '../../../product/constants/constants.dart';
import '../../../utils/extensions.dart';

class OptionChipWidget extends StatelessWidget {
  const OptionChipWidget({
    super.key,
    required this.title,
    this.icon,
    this.selected = false,
  });
  final String title;
  final Widget? icon;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14).w,
      decoration: BoxDecoration(
        color: selected ? const Color(0xffF2F2F2) : null,
        border: Border.all(
          color: selected ? const Color(0xff222222) : const Color(0xffDDDDDD),
          width: 1.w,
        ),
        borderRadius: BorderRadius.circular(38).r,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            icon!,
            10.boxW,
          ],
          AppText.s14w400BdM(
            title,
            fontSize: 13.sp,
            fontFamily: StringConstants.roboto,
          ),
        ],
      ),
    );
  }
}

class OptionChipWidgett extends StatelessWidget {
  const OptionChipWidgett({
    super.key,
    required this.title,
    this.icon,
    this.isSelected = false, // Add this parameter
  });
  final String title;
  final Widget? icon;
  final bool isSelected; // Add this

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14).w,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffDDDDDD),
          width: 1.w,
        ),
        borderRadius: BorderRadius.circular(38).r,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            icon!,
            10.boxW,
          ],
          AppText.s14w400BdM(
            title,
            fontSize: 13.sp,
            color: Colors.black,
            fontFamily: StringConstants.roboto,
          ),
        ],
      ),
    );
  }
}
