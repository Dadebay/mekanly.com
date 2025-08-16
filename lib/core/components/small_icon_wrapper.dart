import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallIconWrapper extends StatelessWidget {
  const SmallIconWrapper({
    super.key,
    required this.icon,
  });

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6).w,
      child: SizedBox(
        width: 16.w,
        height: 16.w,
        child: icon,
      ),
    );
  }
}

class OptionPossibilityIconWrapper extends StatelessWidget {
  const OptionPossibilityIconWrapper({
    super.key,
    required this.icon,
  });

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24.w,
      height: 24.w,
      child: icon,
    );
  }
}
