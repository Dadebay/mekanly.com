import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientBgContainer extends StatelessWidget {
  const GradientBgContainer({
    super.key,
    required this.child,
    this.isLux = false,
    this.isVip = false,
  });

  final Widget child;
  final bool isLux;
  final bool isVip;

  @override
  Widget build(BuildContext context) {
    List<Color> gradientColors;

    if (isLux) {
      gradientColors = const [
        Color.fromRGBO(250, 245, 132, 1),
        Color.fromRGBO(255, 254, 199, 1),
        Color.fromRGBO(255, 249, 224, 1),
        Color.fromRGBO(255, 255, 255, 1),
      ];
    } else if (isVip) {
      gradientColors = const [
        Color.fromRGBO(255, 242, 179, 1),
        Color.fromRGBO(255, 253, 186, 1),
        Color.fromRGBO(255, 249, 224, 1),
        Color.fromRGBO(255, 255, 255, 1),
      ];
    } else {
      gradientColors = const [
        Color(0xffE4F1FA),
        Color(0xffE4F1FA),
        Color(0xffF0F7FC),
        Color(0xffF6FBFD),
        Color(0xffFFFFFF),
      ];
    }

    return Container(
      padding: const EdgeInsets.fromLTRB(12, 13, 12, 18).w,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: gradientColors,
        ),
      ),
      child: child,
    );
  }
}
