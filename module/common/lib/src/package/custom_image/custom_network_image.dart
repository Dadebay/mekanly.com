import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/src/package/custom_image/custom_mem_cahe.dart';
import 'package:common/src/package/custom_shimmer_wrapper/custom_shimmer_wrapper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// It will provide to image caching and image loading from network
final class CustomNetworkImage extends StatelessWidget {
  /// The line `const CustomNetworkImage({super.key});` is defining a constructor
  /// for the `CustomNetworkImage` class.
  const CustomNetworkImage({
    this.shimmerWrapper,
    super.key,
    this.imageUrl,
    this.emptyWidget,
    this.memCache = const CustomMemCache(height: 200, width: 200),
    this.boxFit = BoxFit.cover,
    this.loadingWidget,
    this.shouldBeSvg = false,
    this.size,
    this.shimmerColor,
  });

  ///  Image source address
  final String? imageUrl;

  /// When image is not available then it will show empty widget
  final Widget? emptyWidget;

  /// When image is loading then it will show loading widget
  final Widget? loadingWidget;

  /// Default value is [CustomMemCache(height: 200, width: 200)]
  final CustomMemCache memCache;

  /// Default value is [BoxFit.cover]
  final BoxFit boxFit;

  /// Image size
  final Size? size;

  /// Shimmer color
  final Color? shimmerColor;

  /// it will be return Svg image if gives an type error
  final bool shouldBeSvg;

  /// When image is not available then it will show empty widget
  final ShimmerWrapper? shimmerWrapper;

  @override
  Widget build(BuildContext context) {
    final url = imageUrl;
    if (url == null || url.isEmpty) return emptyWidget ?? const SizedBox();
    return CachedNetworkImage(
      imageUrl: url,
      memCacheHeight: memCache.height,
      memCacheWidth: memCache.width,
      fit: boxFit,
      width: size?.width,
      height: size?.height,
      fadeInDuration: Duration.zero,
      placeholderFadeInDuration: Duration.zero,
      fadeOutDuration: Duration.zero,
      errorListener: (value) {
        if (kDebugMode) debugPrint('Error: $value');
      },
      progressIndicatorBuilder: (context, url, progress) {
        return shimmerWrapper ??
            ShimmerWrapper(
              baseColor: shimmerColor,
              size: size ?? const Size(100, 100),
            );
      },
      errorWidget: (context, url, error) {
        return emptyWidget ??
            (shouldBeSvg
                ? SvgPicture.network(
                    url,
                    placeholderBuilder: (context) => ShimmerWrapper(
                      baseColor: shimmerColor,
                      size: size ?? const Size(100, 100),
                    ),
                    width: size?.width,
                    height: size?.height,
                  )
                : ShimmerWrapper(
                    baseColor: shimmerColor,
                    size: size ?? const Size(100, 100),
                  ));
      },
    );
  }
}
