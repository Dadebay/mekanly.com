import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../localization/extensions.dart';
import '../../product/constants/app_colors.dart';
import '../../product/constants/app_dimensions.dart';
import '../../product/constants/constants.dart';
import '../../utils/extensions.dart';

class SearchFieldBusiness extends StatelessWidget {
  const SearchFieldBusiness({
    super.key,
    this.onChanged,
    required this.onSearchTap,
    this.showClearButton = false,
    this.onFieldSubmitted,
  });

  final ValueChanged<String>? onChanged;
  final VoidCallback onSearchTap;

  final bool showClearButton;
  final ValueChanged<String>? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSearchTap,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.searchBarShadow,
              offset: Offset(0, AppDimensions.searchBarShadowOffsetY),
              spreadRadius: AppDimensions.searchBarShadowSpreadRadius,
              blurRadius: AppDimensions.searchBarShadowBlurRadius,
            ),
          ],
        ),
        child: IgnorePointer(
          child: TextFormField(
            cursorColor: ColorName.main,
            onFieldSubmitted: onFieldSubmitted,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(
                left: 20,
                bottom: 10,
                top: 10,
                right: 10,
              ),
              hintText: context.translation.search,
              hintStyle: context.textTheme.bodyMedium?.copyWith(
                fontFamily: StringConstants.roboto,
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: const Color(0xff6A6A6A),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                  child: Assets.icons.icSearchDark.svg(
                    package: 'gen',
                  ),
                ),
              ),
              suffixIconConstraints: const BoxConstraints(
                minWidth: 20,
                minHeight: 20,
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(46).w,
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(46).w,
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(46).w,
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
