import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import '../../../core/components/app_text.dart';
import '../../../product/constants/constants.dart';
import '../../../utils/extensions.dart';

class RoundedBlueBorderedChipBtn extends StatelessWidget {
  const RoundedBlueBorderedChipBtn({
    super.key,
    required this.onTap,
    required this.title,
    required this.icon,
    this.isSelected = false,
  });

  final VoidCallback onTap;
  final String title;
  final SvgGenImage icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6).w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30).w,
          color: isSelected ? ColorName.houseChip : const Color(0xFFF6F6F6),
          border: Border.all(
            color: isSelected ? ColorName.chipIcon : const Color(0xFFE4E4E4),
          ),
        ),
        child: Row(
          children: [
            3.boxW,
            icon.svg(
              package: 'gen',
              color: isSelected ? ColorName.chipIcon : const Color(0xFF717171),
            ),
            3.boxW,
            AppText.s14w400BdM(
              title,
              color: isSelected ? ColorName.chipIcon : const Color(0xFF717171),
              fontSize: 11.sp,
              fontWeight: FontWeight.w400,
              fontFamily: StringConstants.roboto,
            ),
            3.boxW,
            Assets.icons.arrow.svg(
              package: 'gen',
              color: isSelected ? ColorName.chipIcon : const Color(0xFF717171),
            ),
            3.boxW,
          ],
        ),
      ),
    );
  }
}
