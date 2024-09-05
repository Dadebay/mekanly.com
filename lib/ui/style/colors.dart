import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xff019eff);
  static const Color secondary = Color(0xff019eff);

  static const Color buttons = Color(0xff3750fe);

  static const Color mainTextDark = Color(0xFF212121);
  static const Color mainText = Color(0xfff1f3f5);

  static const Color secondaryText = Color(0xffa6a6a6);
  static const Color secondaryTextDark = Color(0xFF7f7f7f);

  static const Color background = Color.fromARGB(255, 255, 255, 255);
  static const Color statusBar = Color(0xff393737);
  static const Color red = Color(0xffe41c5a);
  static const Color yellow = Color(0xffffc000);
  static const Color green = Color(0xff00b050);
  static const Color linkText = Color(0xff0065db);
  static const Color trans = Colors.transparent;
  static const Color black = Colors.black;
  static const Color white = Colors.white;
}

class CustomMaterialStateColor extends WidgetStateColor {
  final Color color;

  CustomMaterialStateColor(this.color) : super(0);

  @override
  Color resolve(Set<WidgetState> states) {
    return color;
  }
}

WidgetStateColor toMtrlStColor(Color color) {
  return CustomMaterialStateColor(color);
}
