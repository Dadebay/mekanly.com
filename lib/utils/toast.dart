// Flutter imports:
import 'package:flutter/material.dart';

enum ToastGravity { bottom, center, top }

class ToastDecorator extends StatelessWidget {
  const ToastDecorator({
    super.key,
    required this.widget,
    this.backgroundColor = Colors.black,
    this.border = const Border(),
    this.margin = const EdgeInsets.symmetric(horizontal: 20),
    this.padding = const EdgeInsets.fromLTRB(16, 10, 16, 10),
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
  });
  final Widget widget;
  final Color backgroundColor;
  final Border border;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: borderRadius,
            border: border,
          ),
          margin: margin,
          padding: padding,
          child: widget,
        ),
      ),
    );
  }
}

class ToastUtil {
  static void show(
    BuildContext context,
    Widget widget, {
    int duration = 2,
    ToastGravity gravity = ToastGravity.bottom,
  }) {
    _ToastView.dismiss();
    _ToastView.createViewToast(context, duration, gravity, widget);
  }
}

class _ToastView {
  //singleton

  factory _ToastView() {
    return _singleton;
  }

  _ToastView._internal();
  static final _ToastView _singleton = _ToastView._internal();
  static late OverlayState? overlayState;
  static late OverlayEntry _overlayEntry;
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
    overlayState?.insert(_overlayEntry);
    await Future.delayed(Duration(seconds: duration));
    dismiss();
  }

  static void dismiss() {
    if (!_isVisible) {
      return;
    }
    _isVisible = false;
    _overlayEntry.remove();
  }
}

class _ToastWidget extends StatelessWidget {
  const _ToastWidget({
    super.key,
    required this.widget,
    required this.gravity,
  });

  final Widget widget;
  final ToastGravity gravity;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: gravity == ToastGravity.top
          ? MediaQuery.of(context).viewInsets.top + 50
          : null,
      bottom: gravity == ToastGravity.bottom
          ? MediaQuery.of(context).viewInsets.bottom + 85
          : null,
      child: Material(
        color: Colors.transparent,
        child: widget,
      ),
    );
  }
}
