import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import 'package:mekanly/utils/api_provider.dart';

import '../product/constants/constants.dart';
import '../remote/entities/user_house/user_houses_response.dart';

extension LangByLocale on String {
  Locale? get getLocale {
    switch (this) {
      case 'en':
        return const Locale('en');
      case 'tk':
        return const Locale('tk');
      case 'ru':
        return const Locale('ru');
    }
    return null;
  }
}

extension HouseStatus on UserHouse {
  String get statusText {
    switch (status) {
      case 'active':
        return 'Kabul edildi';
      case 'non-active':
        return 'Kabul edilmedi';
      case 'pending':
        return 'Garaşylýar';
      default:
        return '';
    }
  }

  Color get statusColor {
    switch (status) {
      case 'active':
        return const Color(0xff32A600);
      case 'non-active':
        return const Color(0xffC13515);
      case 'pending':
        return const Color(0xff4D7CA1);
      default:
        return Colors.transparent;
    }
  }
}

extension ListUpdate<T> on List<T> {
  List<T> update(int pos, T t) {
    final list = <T>[];
    list.add(t);
    replaceRange(pos, pos + 1, list);
    return this;
  }
}

extension LocaleNamed on Locale {
  bool get isTk => this == const Locale('en');

  bool get isRu => this == const Locale('ru');

  String get getCurrentLangName {
    switch (this) {
      case const Locale('en'):
        return 'en';
      case const Locale('ru'):
        return 'ru';
      case const Locale('tk'):
        return 'tk';
      default:
        return '';
    }
  }
}

extension MapperExt on Map<String, dynamic> {
  Map<String, dynamic> get filterNonNullValues {
    // Use the where method to create a new map with only non-null values
    return Map.fromEntries(
      entries.where((entry) => entry.value != null),
    );
  }
}

extension LocaleTranslation on Locale {
  String tr() {
    switch (this) {
      case const Locale('en'):
        return 'English';
      case const Locale('ru'):
        return 'Русский';
      case const Locale('tk'):
        return 'Türkmen';
      default:
        return '';
    }
  }
}

extension WrapWidgetExt on Widget {
  Widget whenWrapFitted({BoxFit? fit, bool mayWrap = true}) {
    return mayWrap
        ? FittedBox(
            fit: fit ?? BoxFit.contain,
            child: this,
          )
        : SizedBox(
            child: this,
          );
  }
}

extension UrlExt on String {
  String get withUrl {
    return '${ApiProvider().baseUrl}/$this';
  }
}

extension ImageResolution on int {
  int withDevicePixel(BuildContext context) {
    return this * MediaQuery.devicePixelRatioOf(context).round();
  }
}

extension TextStyleX on TextStyle {
  /// A method to underline a text with a customizable [distance] between the text
  /// and underline. The [color], [thickness] and [style] can be set
  /// as the decorations of a [TextStyle].
  TextStyle underlined({
    Color? color,
    double distance = 1,
    FontWeight? fontWeight,
    double thickness = .6,
    double? fontSize,
    TextDecorationStyle style = TextDecorationStyle.solid,
  }) {
    return copyWith(
      shadows: [
        Shadow(
          color: color ?? ColorName.addressDate,
          offset: const Offset(0, -.5),
        ),
      ],
      fontFamily: fontFamily ?? StringConstants.manrope,
      fontWeight: fontWeight,
      color: color ?? ColorName.addressDate,
      decoration: TextDecoration.underline,
      decorationThickness: thickness,
      decorationColor: color ?? this.color,
      decorationStyle: style,
      fontSize: fontSize ?? this.fontSize,
    );
  }
}

extension Spacings on num {
  SizedBox get boxH => SizedBox(height: toDouble().h);

  SizedBox get boxW => SizedBox(width: toDouble().w);
}

extension ThemeExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension ColorizeWidget on Widget {
  Widget toColorized({Color? color}) {
    return ColoredBox(
      color: color ?? ColorName.price,
      child: this,
    );
  }
}

extension PreferredSizeExt on Widget {
  PreferredSize get toPreferredSize => PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: this,
      );
}

extension SliverExt on Widget {
  SliverToBoxAdapter get toSliver => SliverToBoxAdapter(
        child: this,
      );
}

extension AlignmentExt on Widget {
  Widget toLeft() {
    return Align(
      alignment: Alignment.centerLeft,
      child: this,
    );
  }

  Widget toCenter() {
    return Align(
      child: this,
    );
  }

  Widget toRight() {
    return Align(
      alignment: Alignment.centerRight,
      child: this,
    );
  }
}
