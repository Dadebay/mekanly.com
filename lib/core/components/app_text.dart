import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/extensions.dart';

class AppText extends StatelessWidget {
  const AppText._(
    this._getStyle, {
    super.key,
    required this.data,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.softWrap,
    this.fontSize,
    this.letterSpacing,
    this.autoSize = false,
  });

  // Display styles
  factory AppText.s57w400DlL(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText._(
      (ThemeData theme) => theme.textTheme.displayLarge!,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory AppText.s45w400DlM(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText._(
      (ThemeData theme) => theme.textTheme.displayMedium!,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory AppText.s36w400DlS(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText._(
      (ThemeData theme) => theme.textTheme.displaySmall!,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  // Headline styles
  factory AppText.s32w600HlL(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    double? fontSize,
  }) {
    return AppText._(
      (ThemeData theme) => theme.textTheme.headlineLarge!,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      fontSize: fontSize,
    );
  }

  factory AppText.s28w600HlM(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText._(
      (ThemeData theme) => theme.textTheme.headlineMedium!,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory AppText.s24w600HlS(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText._(
      (ThemeData theme) => theme.textTheme.headlineSmall!,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  // Title styles
  factory AppText.s20w500TtL(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    FontWeight? fontWeight,
    TextOverflow? overflow,
  }) {
    return AppText._(
      (ThemeData theme) => theme.textTheme.titleLarge!.copyWith(
        fontWeight: fontWeight,
      ),
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory AppText.s16w500TtM(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    FontWeight? fontWight,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText._(
      (ThemeData theme) => theme.textTheme.titleMedium!.copyWith(
        fontWeight: fontWight,
      ),
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory AppText.s16w500TtS(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText._(
      (ThemeData theme) => theme.textTheme.titleSmall!,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  // Body styles
  factory AppText.s16w400BdL(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    bool? softWrap,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    return AppText._(
      (ThemeData theme) => theme.textTheme.bodyLarge!.copyWith(
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
      ),
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      softWrap: softWrap,
    );
  }

  factory AppText.s14w400BdM(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    bool? softWrap,
    FontWeight? fontWeight,
    double? fontSize,
    double? height,
    String? fontFamily,
    bool underline = false,
  }) {
    return AppText._(
      (ThemeData theme) => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        fontSize: fontSize,
        height: height,
        decoration: underline ? TextDecoration.underline : null,
        decorationColor:
            underline ? const Color.fromARGB(0, 106, 106, 106) : null,
      ),
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      softWrap: softWrap,
    );
  }

  factory AppText.s12w400BdS(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    bool? softWrap,
    double? fontSize,
    FontWeight? fontWeight,
    bool underlined = false,
    String? fontFamily,
  }) {
    return AppText._(
      (ThemeData theme) => underlined
          ? theme.textTheme.bodySmall!.copyWith(
              fontWeight: fontWeight,
              fontSize: fontSize,
              color: color,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
            )
          : theme.textTheme.bodySmall!.copyWith(
              fontWeight: fontWeight,
              fontSize: fontSize,
              fontFamily: fontFamily,
            ),
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      softWrap: softWrap,
    );
  }
  factory AppText.underLined(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    bool? softWrap,
    double? fontSize,
    FontWeight? fontWeight,
    bool underlined = false,
    String? fontFamily,
  }) {
    return AppText._(
      (ThemeData theme) => underlined
          ? theme.textTheme.bodySmall!.underlined(
              fontWeight: fontWeight,
              fontSize: fontSize,
              color: color,
              // decoration: TextDecoration.underline,
              // decorationStyle: TextDecorationStyle.solid,
            )
          : theme.textTheme.bodySmall!.copyWith(
              fontWeight: fontWeight,
              fontSize: fontSize,
              fontFamily: fontFamily,
            ),
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      softWrap: softWrap,
    );
  }

  // Label styles
  factory AppText.s14w500LbL(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText._(
      (ThemeData theme) => theme.textTheme.labelLarge!,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory AppText.s12w500LbM(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText._(
      (ThemeData theme) => theme.textTheme.labelMedium!,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory AppText.s11w500LbS(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText._(
      (ThemeData theme) => theme.textTheme.labelSmall!,
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory AppText.s10w400LbS(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    String? fontFamily,
    FontWeight? fontWeight,
  }) {
    return AppText._(
      (ThemeData theme) => theme.textTheme.labelSmall!.copyWith(
        fontSize: 10.sp,
        fontWeight: fontWeight ?? FontWeight.w400,
        fontFamily: fontFamily,
      ),
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory AppText.s9w400LbM(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText._(
      (ThemeData theme) => theme.textTheme.labelSmall!.copyWith(
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
      ),
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory AppText.s9w700LbM(
    String data, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return AppText._(
      (ThemeData theme) => theme.textTheme.labelSmall!.copyWith(
        fontSize: 9,
        fontWeight: FontWeight.w700,
      ),
      key: key,
      data: data,
      color: color,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  final String data;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool? softWrap;
  final double? fontSize;
  final double? letterSpacing;
  final bool autoSize;
  final TextStyle Function(ThemeData) _getStyle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final baseStyle = _getStyle(theme);

    final effectiveTextStyle = baseStyle.copyWith(
      color: color,
      fontSize: fontSize,
      letterSpacing: letterSpacing,
    );

    return Text(
      data,
      style: effectiveTextStyle,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      softWrap: softWrap,
    );
  }

  static void s16w600BdS(String s, {required String fontFamily}) {}
}
