import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

const Color _shimmerBaseColor = Color(0xffEAECF0);

/// Custom shimmer wrapper
class ShimmerWrapper extends StatelessWidget {
  /// Custom shimmer wrapper
  const ShimmerWrapper({
    required this.size,
    this.baseColor,
    this.child,
    super.key,
  });

  /// set the child need to wrapped by shimmer
  final Widget? child;

  /// BaseColor
  final Color? baseColor;

  /// Size for covering the child
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _shimmerBaseColor,
      width: size.width,
      height: size.height,
      child: Shimmer.fromColors(
        baseColor: baseColor ?? _shimmerBaseColor,
        highlightColor:
            baseColor?.withAlpha(77) ?? _shimmerBaseColor.withAlpha(77),
        child: child ??
            Container(
              color: _shimmerBaseColor,
              width: size.width,
              height: size.height,
            ),
      ),
    );
  }
}
