import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xff8497b0);

  static const Color buttons = Color(0xFF5b9bd5);

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

class CustomMaterialStateColor extends MaterialStateColor {
  final Color color;

  CustomMaterialStateColor(this.color) : super(0);

  @override
  Color resolve(Set<MaterialState> states) {
    return color;
  }
}

MaterialStateColor toMtrlStColor(Color color) {
  return CustomMaterialStateColor(color);
}
