import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircledIconBtn extends StatelessWidget {
  const CircledIconBtn({super.key, required this.icon, required this.onTap});

  final Widget icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(99.w),
      child: Container(
        padding: const EdgeInsets.all(8).w,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: SizedBox(
          width: 20.w,
          height: 20.w,
          child: icon,
        ),
      ),
    );
  }
}
