import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/components/app_bar/app_bar.dart';

class BaseLoginView extends StatelessWidget {
  const BaseLoginView({
    super.key,
    required this.appBarTitle,
    required this.content,
  });

  final String appBarTitle;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.login(
        title: appBarTitle,
        appBarHeight: 10.w,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24).w,
        child: content,
      ),
    );
  }
}
