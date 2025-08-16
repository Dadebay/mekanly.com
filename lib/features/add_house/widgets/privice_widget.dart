import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../../localization/extensions.dart';

class PrivacyNoticeBox extends StatelessWidget {
  const PrivacyNoticeBox({
    super.key,
    required this.onTermsTap,
    required this.onPrivacyTap,
    required this.onPrivacyAccepted,
  });
  final VoidCallback onTermsTap;
  final VoidCallback onPrivacyTap;
  final ValueChanged<bool> onPrivacyAccepted;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F2F6),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 15.w,
            height: 15.w,
            child: Assets.icons.duzgun.svg(package: 'gen'),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 12.sp,
                  color: const Color.fromARGB(255, 85, 85, 85),
                ),
                children: [
                  TextSpan(text: context.translation.dow_et_bn),
                  TextSpan(
                    text: context.translation.ul_duz,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 13, 149, 233)),
                    recognizer: TapGestureRecognizer()..onTap = onTermsTap,
                  ),
                  TextSpan(text: context.translation.we),
                  TextSpan(
                    text: context.translation.privacy_policy,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 13, 149, 233)),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        onPrivacyTap();
                        onPrivacyAccepted(true);
                      },
                  ),
                  TextSpan(text: context.translation.dow_et_bn_dowam),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
