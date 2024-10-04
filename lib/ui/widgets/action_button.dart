// ignore_for_file: must_be_immutable

import '/ui/style/style.dart';
import '../../config/config.dart';

class ActionButton extends StatelessWidget {
  ActionButton({super.key, this.label = '', this.size, this.onTap, this.radius = 17, this.isTransparent = false, this.icon, this.color, this.textColor});

  final String label;
  void Function()? onTap;
  final double? size;
  final double radius;
  final bool isTransparent;
  Widget? icon;
  Color? color;
  Color? textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
          shadowColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          backgroundColor: color ?? AppColors.primary,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          )),
      onPressed: onTap,
      child: icon ??
          Tex(
            label,
            con: context,
            col: textColor ?? AppColors.mainText,
            size: size,
            align: TextAlign.center,
            padding: 0,
          ).subtitle,
    );
  }
}

class ActionButtonGradient extends StatelessWidget {
  ActionButtonGradient({super.key, this.label = '', this.size, this.onTap, this.radius = 17, this.isTransparent = false, this.icon, this.color, this.textColor});

  final String label;
  void Function()? onTap;
  final double? size;
  final double radius;
  final bool isTransparent;
  Widget? icon;
  Color? color;
  Color? textColor;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(borderRadius: borderAll15, gradient: const LinearGradient(colors: [Color(0xffd253ff), AppColors.secondary])),
      child: TextButton(
        style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
            shadowColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            )),
        onPressed: onTap,
        child: icon ??
            Tex(
              label,
              con: context,
              col: textColor ?? AppColors.mainText,
              size: size,
              align: TextAlign.center,
              padding: 0,
            ).title,
      ),
    );
  }
}
