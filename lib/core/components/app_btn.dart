import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import '../../product/constants/constants.dart';
import '../../utils/extensions.dart';
import 'app_text.dart';
import 'loading_indicator.dart';

class AppBtn extends StatelessWidget {
  const AppBtn({
    super.key,
    required this.onTap,
    this.bgColor,
    this.textColor,
    this.borderColor,
    this.filled = true,
    this.busy = false,
    required this.text,
    this.fontSize,
    this.ltIcon,
    this.rgIcon,
    this.padding,
    this.fontFamily,
    this.fontWeight,
  });

  final VoidCallback onTap;
  final Color? bgColor;
  final Color? textColor;
  final Color? borderColor;
  final bool filled;
  final double? fontSize;
  final String text;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final Widget? ltIcon;
  final Widget? rgIcon;
  final EdgeInsets? padding;
  final bool busy;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: !busy ? onTap : null,
        style: ElevatedButton.styleFrom(
          padding: padding ??
              const EdgeInsets.symmetric(
                vertical: 6,
                horizontal: 16,
              ).w,
          elevation: .2,
          shape: RoundedRectangleBorder(
            side: filled
                ? BorderSide.none
                : BorderSide(
                    color: borderColor ?? ColorName.addressDate,
                  ),
            borderRadius: BorderRadius.circular(8).r,
          ),
          backgroundColor:
              filled ? (bgColor ?? ColorName.main) : ColorName.white,
          shadowColor: filled ? ColorName.white : ColorName.addressDate,
          foregroundColor: filled ? ColorName.white : ColorName.addressDate,
          surfaceTintColor: filled ? ColorName.white : ColorName.addressDate,
          disabledBackgroundColor:
              filled ? ColorName.ads1 : ColorName.addressDate,
          disabledForegroundColor:
              filled ? ColorName.ads1 : ColorName.addressDate,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (ltIcon != null) ...[
              ltIcon!,
              8.boxW,
            ],
            Text(
              text,
              style: context.textTheme.bodyMedium?.copyWith(
                fontSize: fontSize,
                fontFamily: fontFamily,
                fontWeight: fontWeight,
                color: textColor ??
                    (filled
                        ? (busy ? ColorName.addressDate : ColorName.white)
                        : ColorName.addressDate),
              ),
            ),
            if (busy) ...[
              16.boxW,
              LoadingIndicator.basic(
                size: const Size(18, 18),
                color: ColorName.ads1,
              ),
            ],
            if (rgIcon != null) ...[
              8.boxW,
              rgIcon!,
            ],
          ],
        ),
      ),
    );
  }
}

class GradientBtn extends StatelessWidget {
  const GradientBtn({
    super.key,
    required this.onTap,
    this.text,
    this.txtColor,
    this.child,
    this.spaceHorizontal,
    this.isLoading = false,
  });

  final VoidCallback onTap;
  final String? text;
  final Color? txtColor;
  final Widget? child;
  final double? spaceHorizontal;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xff384CFF),
            Color(0xff00A3FF),
          ],
        ),
        borderRadius: BorderRadius.circular(15).r,
        boxShadow: [
          BoxShadow(
            blurRadius: 9,
            offset: const Offset(0, 4),
            color: const Color(0xff384CFF).withOpacity(0.5),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15).r,
        child: InkWell(
          onTap: isLoading ? null : onTap,
          borderRadius: BorderRadius.circular(15).r,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12.w),
            alignment: Alignment.center,
            child: isLoading
                ? LoadingIndicator.basic(
                    size: Size(18.w, 18.w),
                    color: ColorName.white,
                  )
                : AppText.s14w400BdM(
                    text ?? 'text',
                    fontWeight: FontWeight.w500,
                    color: txtColor ?? Colors.white,
                    fontFamily: StringConstants.roboto,
                  ),
          ),
        ),
      ),
    );
  }
}

class OutlinedGradientBtn extends StatelessWidget {
  OutlinedGradientBtn({
    super.key,
    required this.onTap,
    required this.child,
  });

  final VoidCallback onTap;
  final Widget child;

  final BoxDecoration kInnerDecoration = BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.white),
    borderRadius: BorderRadius.circular(32),
  );

  final kGradientBoxDecoration = BoxDecoration(
    gradient: const LinearGradient(
      colors: [
        Color(0xff384CFF),
        Color(0xff00A3FF),
      ],
    ),
    border: Border.all(
      color: Colors.white,
    ),
    borderRadius: BorderRadius.circular(32),
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(36),
      child: Container(
        height: 36.w,
        alignment: Alignment.center,
        decoration: kGradientBoxDecoration,
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            alignment: Alignment.center,
            decoration: kInnerDecoration,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32).w,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}

class TextBtn extends StatelessWidget {
  const TextBtn({
    super.key,
    required this.onTap,
    this.text,
    this.txtColor,
    this.child,
    this.spaceHorizontal,
    this.fontSize,
    this.fontWeight,
  });
  final VoidCallback onTap;
  final String? text;
  final Color? txtColor;
  final Widget? child;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? spaceHorizontal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: spaceHorizontal != null
          ? EdgeInsets.symmetric(horizontal: spaceHorizontal!)
          : EdgeInsets.zero,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          // textStyle: context.textTheme.titleLarge?.copyWith(
          //   color: txtColor ?? ColorName.basePrimary,
          //   fontSize: 12,
          // ),
        ),
        onPressed: onTap,
        child: child ??
            Text(
              text ?? 'Any text',
              // style: context.textTheme.titleLarge?.copyWith(
              //   color: txtColor ?? ColorName.basePrimary,
              //   fontSize: fontSize ?? 12,
              //   fontWeight: fontWeight ?? FontWeight.w500,
              // ),
            ),
      ),
    );
  }
}
