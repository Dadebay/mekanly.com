import '../style/style.dart';
import '/config/config.dart';

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
    return AppBar(
      elevation: 4,
      leading: leading,
      centerTitle: true,
      backgroundColor: AppColors.background,
      surfaceTintColor: Colors.transparent,
      shadowColor: AppColors.statusBar.withOpacity(.5),
      title: Tex(
        title,
        con: context,
      ).appBar,
      bottom: bottom,
    );
  }
}