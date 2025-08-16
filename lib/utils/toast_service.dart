import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import 'extensions.dart';

enum ToastGravity { bottom, center, top }

class ToastDecorator extends StatelessWidget {
  const ToastDecorator(
    this.widget, {
    super.key,
    this.backgroundColor = ColorName.main,
    this.borderColor = Colors.green,
    this.margin = const EdgeInsets.symmetric(horizontal: 20),
    this.padding = const EdgeInsets.fromLTRB(16, 10, 16, 10),
    this.borderRadius = const BorderRadius.all(
      Radius.circular(10),
    ),
  });
  final Widget widget;
  final Color backgroundColor;
  final Color borderColor;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      color: Colors.red,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: borderRadius,
          border: Border.all(color: borderColor),
        ),
        margin: margin,
        padding: padding,
        child: widget,
      ),
    );
  }
}

class ToastUtil {
  static void show(
    Widget widget,
    BuildContext context, {
    int duration = 3,
    ToastGravity gravity = ToastGravity.top,
  }) {
    _ToastView.dismiss();
    _ToastView.createViewToast(context, duration, gravity, widget);
  }

  static ToastDecorator errorDecorator({
    required String title,
    String? subtitle,
  }) {
    return decorator(
      icon: const Icon(
        Icons.error_outline_outlined,
        size: 40,
        color: Color(0xffB42318),
      ),
      title: title,
      subtitle: subtitle,
      hasBg: true,
      titleStyle: TextStyle(
        color: const Color(0xffB42318),
        fontWeight: FontWeight.w500,
        fontSize: 14.sp,
      ),
      borderColor: const Color(0xffFDA29B),
      bgColor: const Color(0xffFEF3F2),
    );
  }

  static ToastDecorator successDecorator({
    required String title,
    String? subtitle,
  }) {
    return decorator(
      icon: const Icon(
        Icons.check_circle_outline_outlined,
        size: 40,
        color: Color(0xff027A48),
      ),
      title: title,
      subtitle: subtitle,
      hasBg: true,
      titleStyle: TextStyle(
        color: const Color(0xff027A48),
        fontWeight: FontWeight.w500,
        fontSize: 14.sp,
      ),
      borderColor: const Color(0xffD1FADF),
      bgColor: const Color(0xffECFDF3),
    );
  }

  static ToastDecorator infoDecorator({
    required String title,
    String? subtitle,
  }) {
    return decorator(
      icon: const Icon(
        Icons.info_outline_rounded,
        size: 40,
        color: ColorName.main,
      ),
      title: title,
      subtitle: subtitle,
    );
  }

  static ToastDecorator decorator({
    required String title,
    TextStyle? titleStyle,
    Widget? icon,
    String? subtitle,
    Color? bgColor,
    Color? borderColor,
    bool hasBg = false,
  }) =>
      ToastDecorator(
        Material(
          color: bgColor ?? ColorName.white,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (hasBg)
                DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: icon,
                ),
              16.boxW,
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: titleStyle ??
                            TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                            ),
                      ),
                      if (subtitle != null && subtitle != '')
                        Text(
                          subtitle,
                          style: const TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        borderColor: borderColor ?? ColorName.main,
        backgroundColor: bgColor ?? ColorName.white,
      );
}

class _ToastView {
  //singleton
  factory _ToastView() {
    return _singleton;
  }
  _ToastView._internal();
  static final _ToastView _singleton = _ToastView._internal();
  static OverlayState? overlayState;
  static OverlayEntry? _overlayEntry;
  static bool _isVisible = false;

  static Future<void> createViewToast(
    BuildContext context,
    int duration,
    ToastGravity gravity,
    Widget widget,
  ) async {
    overlayState = Overlay.of(context);
    _overlayEntry = OverlayEntry(
      builder: (BuildContext context) => _ToastWidget(
        widget: widget,
        gravity: gravity,
      ),
    );
    _isVisible = true;
    overlayState?.insert(_overlayEntry!);
    await Future<void>.delayed(Duration(seconds: duration));
    dismiss();
  }

  static void dismiss() {
    if (!_isVisible) {
      return;
    }
    _isVisible = false;
    _overlayEntry?.remove();
  }
}

class _ToastWidget extends StatelessWidget {
  const _ToastWidget({
    required this.widget,
    required this.gravity,
  });

  final Widget widget;
  final ToastGravity gravity;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: gravity == ToastGravity.top
          ? MediaQuery.viewPaddingOf(context).top + 46
          : null,
      bottom: gravity == ToastGravity.bottom
          ? MediaQuery.viewPaddingOf(context).bottom + 46
          : null,
      child: Material(
        color: Colors.transparent,
        child: widget,
      ),
    );
  }
}
