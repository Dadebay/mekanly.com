import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import '../../../features/root/view/root_view.dart';
import '../../../utils/extensions.dart';
import '../app_text.dart';

part 'main_app_bar_widget.dart';
part 'base_app_bar.dart';
part 'login_app_bar.dart';

enum _AppBarStyle { main, base, login }

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  factory CustomAppBar.main({double? appBarHeight}) {
    return CustomAppBar._(
      appBarHeight: appBarHeight ?? 0,
      style: _AppBarStyle.main,
      title: '',
      
    );
  }
  factory CustomAppBar.base({
    double? appBarHeight,
    required String title,
    List<Widget>? actions,

  }) {
    return CustomAppBar._(
      appBarHeight: appBarHeight ?? 0,
      actions: actions,
      style: _AppBarStyle.base,
      title: title,
    
    );
  }
  factory CustomAppBar.login({double? appBarHeight, required String title}) {
    return CustomAppBar._(
      appBarHeight: appBarHeight ?? 0,
      style: _AppBarStyle.login,
      title: title,
    );
  }
  const CustomAppBar._({
    this.appBarHeight = 0,
    this.actions,
    required this.style,
    required this.title,
  });
  final double appBarHeight;
  // ignore: library_private_types_in_public_api
  final _AppBarStyle style;
  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return _buildAppBar();
  }

  Widget _buildAppBar() {
    switch (style) {
      case _AppBarStyle.main:
        return const _MainAppBarWidget();
      case _AppBarStyle.base:
        return _BaseAppBarWidget(
          title: title,
          actions: actions,
        );
      case _AppBarStyle.login:
        return _LoginAppBarWidget(
          title: title,
        );
    }
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + appBarHeight);
}
