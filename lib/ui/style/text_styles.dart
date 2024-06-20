import '../../config/config.dart';
import 'app_sizes.dart';
import 'colors.dart';

class Tex extends StatelessWidget {
  final String? text;
  final Color? col;
  final TextAlign? align;
  final double? size;
  final int? maxLines;
  final double? padding;

  final BuildContext con;
  final FontWeight? weight;
  final TextOverflow? overflow;
  // ignore: use_key_in_widget_constructors
  const Tex(
    this.text, {
    this.align,
    this.col,
    this.size,
    this.maxLines,
    this.padding,
    required this.con,
    this.weight,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding ?? 3),
      child: Text(
        text ?? '',
        style: TextStyle(color: col ?? AppColors.mainTextDark),
      ),
    );
  }

  Widget get footerStyle {
    double ratio = MediaQuery.of(con).size.width / 360;
    return Padding(
      padding: EdgeInsets.all(padding ?? 3),
      child: Text(
        text ?? '',
        textAlign: align,
        style: TextStyle(
          fontWeight: weight,
          fontFamily: 'Roboto',
          fontSize: size ?? ((Responsive.isTablet(con) ? AppSizes.pix12 : AppSizes.pix16) * ratio),
          color: col ?? AppColors.mainText,
        ),
      ),
    );
  }

  Widget get firstLetter {
    double ratio = MediaQuery.of(con).size.width / 360;
    return Padding(
      padding: EdgeInsets.all(padding ?? 3),
      child: Text(
        text ?? '',
        textAlign: align,
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: size ?? ((Responsive.isTablet(con) ? AppSizes.pix24 : 30) * ratio),
          color: col ?? AppColors.primary,
        ),
      ),
    );
  }

  Widget get showAll {
    double ratio = MediaQuery.of(con).size.width / 360;
    return Padding(
      padding: EdgeInsets.all(padding ?? 3),
      child: Text(
        text ?? '',
        textAlign: align,
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: size ?? ((Responsive.isTablet(con) ? AppSizes.pix12 : AppSizes.pix16) * ratio),
          color: col ?? AppColors.primary,
          decoration: TextDecoration.underline,
          decorationColor: AppColors.primary,
          textBaseline: TextBaseline.alphabetic,
        ),
      ),
    );
  }

  Widget get white {
    double ratio = MediaQuery.of(con).size.width / 360;
    return Padding(
      padding: EdgeInsets.all(padding ?? 3),
      child: Text(
        text ?? '',
        textAlign: align,
        style: TextStyle(
          fontFamily: 'Roboto',
          fontWeight: weight ?? FontWeight.w400,
          fontSize: size ?? ((Responsive.isTablet(con) ? 13 : AppSizes.pix16) * ratio),
          color: col ?? Colors.white,
        ),
      ),
    );
  }

  Widget get appBar {
    double ratio = MediaQuery.of(con).size.width / 360;
    return Padding(
      padding: EdgeInsets.all(padding ?? 3),
      child: Text(
        text ?? '',
        textAlign: align,
        style: TextStyle(
          fontFamily: 'Roboto',
          fontWeight: weight ?? FontWeight.w700,
          fontSize: size ?? ((Responsive.isTablet(con) ? 14 : 18) * ratio),
          color: col ?? AppColors.mainTextDark,
        ),
      ),
    );
  }

  Widget get title {
    double ratio = MediaQuery.of(con).size.width / 360;
    return Padding(
      padding: EdgeInsets.all(padding ?? 3),
      child: Text(
        text ?? '',
        textAlign: align,
        style: TextStyle(
          fontFamily: 'Roboto',
          fontWeight: weight ?? FontWeight.w600,
          fontSize: size ?? ((Responsive.isTablet(con) ? AppSizes.pix12 : AppSizes.pix16) * ratio),
          color: col ?? AppColors.mainTextDark,
          textBaseline: TextBaseline.alphabetic,
        ),
        maxLines: 4,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget get linkedText {
    double ratio = MediaQuery.of(con).size.width / 360;
    return Padding(
      padding: EdgeInsets.all(padding ?? 3),
      child: Text(
        text ?? '',
        textAlign: align,
        style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: weight ?? FontWeight.w600,
            fontSize: size ?? ((Responsive.isTablet(con) ? AppSizes.pix10 : AppSizes.pix12 + 2) * ratio),
            color: col ?? AppColors.mainTextDark.withOpacity(.9),
            textBaseline: TextBaseline.alphabetic,
            decoration: TextDecoration.underline,
            decorationColor: AppColors.mainTextDark),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget get subtitle {
    double ratio = MediaQuery.of(con).size.width / 360;
    return Padding(
      padding: EdgeInsets.all(padding ?? 3),
      child: Text(
        text ?? '',
        textAlign: align,
        style: TextStyle(
          fontFamily: 'Roboto',
          fontWeight: weight ?? FontWeight.w400,
          fontSize: size ?? ((Responsive.isTablet(con) ? AppSizes.pix10 : AppSizes.pix12) * ratio),
          color: col ?? AppColors.mainTextDark,
          overflow: overflow,
        ),
        maxLines: maxLines,
      ),
    );
  }

  Widget get title1 {
    double ratio = MediaQuery.of(con).size.width / 360;
    return Padding(
      padding: EdgeInsets.all(padding ?? 3),
      child: Text(
        text ?? '',
        textAlign: align,
        style: TextStyle(
          fontFamily: 'Roboto',
          fontWeight: weight ?? FontWeight.w500,
          fontSize: size ?? ((Responsive.isTablet(con) ? 8 : 11) * ratio),
          color: col ?? AppColors.mainTextDark,
        ),
      ),
    );
  }

  Widget get badge {
    double ratio = MediaQuery.of(con).size.width / 360;
    return Padding(
      padding: EdgeInsets.all(padding ?? 3),
      child: Text(
        text ?? '',
        textAlign: align,
        style: TextStyle(
          fontFamily: 'Roboto',
          fontWeight: weight ?? FontWeight.w500,
          fontSize: size ?? ((Responsive.isTablet(con) ? 11 : 14) * ratio),
          color: col ?? AppColors.mainText,
        ),
      ),
    );
  }
}
