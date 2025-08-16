import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DividerCenterTitled extends StatelessWidget {
  const DividerCenterTitled({
    super.key,
    this.title,
  });

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Divider(
          color: const Color(0xffAAAAAA),
          height: 1.h,
          thickness: 1.w,
        ),
        Positioned(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            color: Colors.white,
            child: Text(
              title ?? '',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: 14.sp,
                    color: const Color(0xff999999),
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
