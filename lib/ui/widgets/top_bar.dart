import 'package:mekanly_com/localization/locals.dart';

import '/config/config.dart';
import '../style/style.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  final Widget? leading;
  final Color? color;
  final double? height;
  final PreferredSizeWidget? bottom;

  const TopBar({super.key, this.leading, this.color, required this.title, this.bottom, this.height});

  @override
  Size get preferredSize => Size.fromHeight(height ?? kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    return AppBar(
      elevation: 0.0,
      scrolledUnderElevation: 0.0,
      leading: leading,
      // auto impleasding button color change
      iconTheme: IconThemeData(color: color ?? AppColors.white),
      centerTitle: true,
      backgroundColor: AppColors.secondary1,
      surfaceTintColor: Colors.transparent,
      shadowColor: AppColors.statusBar.withOpacity(.5),
      title: Tex(
        title,
        col: AppColors.white,
        con: context,
      ).appBar,
      bottom: bottom,
    );
  }
}
