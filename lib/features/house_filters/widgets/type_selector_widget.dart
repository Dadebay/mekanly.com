import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/components/app_text.dart';
import '../../../localization/extensions.dart';
import '../../../product/constants/constants.dart';
import '../../../utils/extensions.dart';

class TypeSelectorWidget extends StatelessWidget {
  const TypeSelectorWidget({
    super.key,
    required this.title,
    this.selectedItems,
    required this.onTap,
    this.padding,
  });
  final String title;
  final List<Widget>? selectedItems;
  final VoidCallback onTap;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: padding ?? EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Expanded(
                  child: AppText.s14w400BdM(
                    title,
                    fontFamily: StringConstants.roboto,
                    fontSize: 15.sp,
                  ),
                ),
                AppText.s12w400BdS(
                  (selectedItems?.isNotEmpty ?? false)
                      ? context.translation.selected
                      : context.translation.unselected,
                  fontFamily: StringConstants.roboto,
                ),
                3.boxW,
                const Icon(
                  Icons.keyboard_arrow_down,
                  size: 16,
                ),
              ],
            ),
          ),
        ),
        if (selectedItems?.isNotEmpty ?? false) ...[
          10.boxH,
          Padding(
            padding: padding ?? EdgeInsets.symmetric(horizontal: 16.w),
            child: Wrap(
              runSpacing: 8.w,
              spacing: 8.w,
              children: selectedItems!,
            ),
          ),
        ],
        8.boxH,
        const Divider(
          height: 1,
          color: Color(0xffDCDCDC),
        ),
      ],
    );
  }
}
