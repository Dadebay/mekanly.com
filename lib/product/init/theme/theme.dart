import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../constants/constants.dart';

ThemeData appTheme() {
  return ThemeData(
    useMaterial3: true,
    fontFamily: StringConstants.roboto, // Using Ubuntu as the base font
    // Base theme
    primaryColor: ColorName.main, // Purple color from the image
    scaffoldBackgroundColor: Colors.white,

    // Input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xff6A6A6A)),
      ),
      labelStyle: TextStyle(
        // color: ColorName.blue,
        fontSize: 16.sp,
      ),
      floatingLabelStyle: TextStyle(
        color: const Color(0xFF212121),
        fontSize: 16.sp,
      ),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xff6A6A6A)),
      ),
      // disabledBorder: ,
      errorBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
        ),
      ),
      focusedErrorBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
      ),
      errorStyle: TextStyle(
        color: Colors.red,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        fontFamily: StringConstants.roboto,
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xff6A6A6A)),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ).w,
      hintStyle: TextStyle(
        color: ColorName.addressDate,
        fontSize: 14.sp,
        fontFamily: StringConstants.roboto,
      ),
    ),

    // Elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        // backgroundColor: ColorName.basePrimary,
        foregroundColor: Colors.white,
        // minimumSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10).r,
        ),
        elevation: 0,
        textStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 14,
        ).w,
      ),
    ),

    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
          // overlayColor: WidgetStatePropertyAll(ColorName.bgColor),
          ),
    ),
    textSelectionTheme: TextSelectionThemeData(
        selectionColor: ColorName.blue384c.withOpacity(0.3),
        selectionHandleColor: ColorName.blue384c,
        cursorColor: ColorName.blueish),

    // Checkbox theme for the privacy policy checkbox
    checkboxTheme: CheckboxThemeData(
      fillColor:
          WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
        // if (states.contains(WidgetState.selected)) {
        //   return ColorName.primary;
        // }n.
        return Colors.white;
      }),
      side: WidgetStateBorderSide.resolveWith(
        (states) => const BorderSide(
          // color: states.contains(WidgetState.selected)
          //     ? Colors.transparent
          //     : ColorName.gray2,
          strokeAlign: 5,
          width: .8,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4).r,
        side: WidgetStateBorderSide.resolveWith(
          (states) => BorderSide(
            // color: states.contains(WidgetState.selected)
            //     ? ColorName.primary
            //     : ColorName.gray2,
            strokeAlign: 5,
            width: .8.w,
          ),
        ),
      ),
    ),
    textTheme: TextTheme(
      // Display styles
      displayLarge: TextStyle(
        fontSize: 57.sp,
        fontWeight: FontWeight.w400,
        // color: ColorName.textColor,
        fontFamily: StringConstants.roboto,
      ),
      displayMedium: TextStyle(
        fontSize: 45.sp,
        fontWeight: FontWeight.w400,
        // color: ColorName.textColor,
        fontFamily: StringConstants.roboto,
      ),
      displaySmall: TextStyle(
        fontSize: 36.sp,
        fontWeight: FontWeight.w400,
        // color: ColorName.textColor,
        fontFamily: StringConstants.roboto,
      ),

      // Headline styles
      headlineLarge: TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeight.w600,
        // color: ColorName.textColor,
        fontFamily: StringConstants.roboto,
      ),
      headlineMedium: TextStyle(
        fontSize: 28.sp,
        fontWeight: FontWeight.w600,
        // color: ColorName.textColor,
        fontFamily: StringConstants.roboto,
      ),
      headlineSmall: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
        // color: ColorName.textColor,
        fontFamily: StringConstants.roboto,
      ),

      // Title styles
      titleLarge: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
        // color: ColorName.textColor,
        fontFamily: StringConstants.roboto,
      ),
      titleMedium: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        // color: ColorName.textColor,
        fontFamily: StringConstants.roboto,
      ),
      titleSmall: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        // color: ColorName.textColor,
        fontFamily: StringConstants.roboto,
      ),

      // Body styles
      bodyLarge: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        // color: ColorName.textColor,
        fontFamily: StringConstants.roboto,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        // color: ColorName.textColor,
        fontFamily: StringConstants.roboto,
      ),
      bodySmall: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        // color: ColorName.textColor,
        fontFamily: StringConstants.roboto,
      ),

      // Label styles
      labelLarge: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        // color: ColorName.textColor,
        fontFamily: StringConstants.roboto,
      ),
      labelMedium: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        // color: ColorName.textColor,
        fontFamily: StringConstants.roboto,
      ),
      labelSmall: TextStyle(
        fontSize: 11.sp,
        fontWeight: FontWeight.w500,
        fontFamily: StringConstants.roboto,
      ),
    ),
  );
}
