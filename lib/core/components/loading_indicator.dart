import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gen/gen.dart';

enum _IndicatorTypes { threeInOut, threeBounce, circle, basic }

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator._(this._type, this.size, this.color);

  factory LoadingIndicator.threeInOut({
    Size? size,
    Color? color,
  }) {
    return LoadingIndicator._(
      _IndicatorTypes.threeInOut,
      size ?? const Size(24, 24),
      color,
    );
  }
  factory LoadingIndicator.threeBounce({
    Size? size,
    Color? color,
  }) {
    return LoadingIndicator._(
      _IndicatorTypes.threeBounce,
      size ?? const Size(24, 24),
      color,
    );
  }
  factory LoadingIndicator.basic({
    Size? size,
    Color? color,
  }) {
    return LoadingIndicator._(
      _IndicatorTypes.basic,
      size ?? const Size(24, 24),
      color,
    );
  }
  factory LoadingIndicator.circle({
    Size? size,
    Color? color,
  }) {
    return LoadingIndicator._(
      _IndicatorTypes.circle,
      size ?? Size(30.w, 30.w),
      color ?? ColorName.main,
    );
  }

  final _IndicatorTypes _type;
  final Size size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return _buildIndicator(_type, size, color);
  }

  Widget _buildIndicator(_IndicatorTypes type, Size size, Color? color) {
    switch (type) {
      case _IndicatorTypes.threeInOut:
        return Center(
          child: SizedBox(
            height: size.height,
            child: SpinKitThreeInOut(
              color: color ?? ColorName.main,
              size: size.height,
            ),
          ),
        );
      case _IndicatorTypes.circle:
        return Center(
          child: SizedBox(
            height: size.height,
            child: SpinKitCircle(
              color: color ?? ColorName.main,
              size: size.height,
            ),
          ),
        );
      case _IndicatorTypes.threeBounce:
        return Center(
          child: SizedBox(
            height: size.height,
            child: SpinKitThreeBounce(
              color: color ?? ColorName.main,
              size: size.height,
            ),
          ),
        );
      case _IndicatorTypes.basic:
        return Center(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: CircularProgressIndicator(
              color: color ?? ColorName.main,
              strokeWidth: 2,
            ),
          ),
        );
    }
  }
}
