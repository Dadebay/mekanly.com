import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../localization/extensions.dart';
import '../../product/constants/constants.dart';
import '../../utils/extensions.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    this.controller,
    this.onChanged,
    required this.onSearchTap,
    required this.onClearTap,
    this.showClearButton = false,
    this.onFieldSubmitted,
  });

  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final VoidCallback onSearchTap;
  final VoidCallback onClearTap;
  final bool showClearButton;
  final ValueChanged<String>? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(46).w,
        color: ColorName.white,
        boxShadow: [
          BoxShadow(
            color: ColorName.black.withValues(alpha: .25),
            blurRadius: 3,
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
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
              onTap: showClearButton ? onClearTap : onSearchTap,
              child: showClearButton
                  ? Assets.icons.silbuton.svg(
                      package: 'gen',
                    )
                  : Assets.icons.icSearchDark.svg(
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
    );
  }
}
