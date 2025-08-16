import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../../core/components/app_text.dart';
import '../../../utils/extensions.dart';
import '../../../utils/helpers.dart';
import '../../../utils/api_provider.dart';
import '../video_player/header_video_player.dart';

class CollapsibleImageHeader implements SliverPersistentHeaderDelegate {
  CollapsibleImageHeader({
    this.title,
    this.subTitle,
    this.videoUrl,
    this.logoUrl,
    this.bgUrl,
    this.time,
    this.viewCount,
  });
  final String? title;
  final String? subTitle;
  final DateTime? time;
  final int? viewCount;
  final String? videoUrl;
  final String? logoUrl;
  final String? bgUrl;

  @override
  double get maxExtent => 335;

  @override
  double get minExtent => kToolbarHeight.w + 58.w;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    // const maxHeight = 626;
    final width = MediaQuery.sizeOf(context).width;
    final progress = shrinkOffset / (maxExtent - minExtent);
    final currentProgress = progress.clamp(0.0, 1.0);

    final currentHeight =
        maxExtent - shrinkOffset.clamp(0.0, maxExtent - minExtent);

    final showAppBar = currentProgress > 0.95;
    final actualHeight = currentHeight - 100 < 1 ? null : currentHeight - 100;

    return Stack(
      children: [
        SizedBox(
          height: currentHeight,
          child: Stack(
            children: [
              SizedBox(
                height: actualHeight,
                width: double.infinity,
                child: AspectRatio(
                  aspectRatio: width / 235,
                  child: CustomNetworkImage(
                    imageUrl: bgUrl,
                    memCache: CustomMemCache(
                      // height: 235.withDevicePixel(context),
                      width: width.toInt().withDevicePixel(context),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.fromLTRB(
                    16,
                    40,
                    16,
                    14,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.s16w400BdL(title ?? ''),
                      6.boxH,
                      Row(
                        children: [
                          SizedBox(
                            height: 12,
                            width: 12,
                            child: Assets.icons.icCalendar.svg(package: 'gen'),
                          ),
                          4.boxW,
                          AppText.s12w400BdS(
                            color: const Color.fromARGB(255, 71, 71, 71),
                            HelpersCopy.formatDate(
                                time), // Use the time property
                          ),
                          8.boxW,
                          SizedBox(
                            height: 15,
                            width: 15,
                            child: Assets.icons.icEye.svg(package: 'gen'),
                          ),
                          4.boxW,
                          AppText.s12w400BdS(
                            color: const Color.fromARGB(255, 71, 71, 71),
                            viewCount?.toString() ?? '',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 16,
                bottom: 70,
                child: AdvLogo(
                  imageUrl: logoUrl,
                  size: const Size(63, 63),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: minExtent,
          child: AppBar(
            surfaceTintColor: Colors.transparent,
            backgroundColor:
                currentProgress > .40 ? ColorName.main : Colors.transparent,
            elevation: 0,
            foregroundColor: ColorName.main,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Assets.icons.icBack.svg(
                package: 'gen',
                color: Colors.white,
              ),
            ),
            centerTitle: false,
            title: showAppBar
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AdvLogo(
                        imageUrl: logoUrl,
                        size: const Size(36, 36),
                      ),
                      10.boxW,
                      AppText.s14w400BdM(
                        title ?? '',
                        color: Colors.white,
                      ),
                    ],
                  )
                : null,
            actions: [
              IconButton(
                icon: Assets.icons.icShare.svg(
                  package: 'gen',
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  FloatingHeaderSnapConfiguration? get snapConfiguration => null;

  @override
  OverScrollHeaderStretchConfiguration? get stretchConfiguration => null;

  @override
  PersistentHeaderShowOnScreenConfiguration? get showOnScreenConfiguration =>
      null;

  @override
  TickerProvider? get vsync => null;
}

class CollapsibleLogoHeader implements SliverPersistentHeaderDelegate {
  CollapsibleLogoHeader({
    this.title,
    this.subTitle,
    this.logoUrl,
    this.time,
    this.viewCount,
  });
  final String? title;
  final String? subTitle;
  final DateTime? time;
  final int? viewCount;
  final String? logoUrl;

  @override
  double get maxExtent => 335;

  @override
  double get minExtent => kToolbarHeight.w + 58.w;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final progress = shrinkOffset / (maxExtent - minExtent);
    final currentProgress = progress.clamp(0.0, 1.0);

    final currentHeight =
        maxExtent - shrinkOffset.clamp(0.0, maxExtent - minExtent);

    final showAppBar = currentProgress > 0.95;

    return Stack(
      children: [
        SizedBox(
          height: currentHeight,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: -40,
                left: 0,
                right: 0,
                height: currentHeight + 100,
                child: ColoredBox(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AdvLogo(
                        imageUrl: logoUrl,
                        size: const Size(90, 90),
                      ),
                      6.boxH,
                      AppText.s14w400BdM(title ?? ''),
                      6.boxH,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 14,
                            width: 14,
                            child: Assets.icons.icCalendar.svg(package: 'gen'),
                          ),
                          6.boxW,
                          AppText.s12w400BdS(
                            HelpersCopy.formatDate(
                                time), // Use the time property
                          ),
                          8.boxW,
                          SizedBox(
                            height: 14,
                            width: 14,
                            child: Assets.icons.icEye.svg(package: 'gen'),
                          ),
                          6.boxW,
                          AppText.s12w400BdS(
                            viewCount?.toString() ?? '',
                          ),
                        ],
                      ),
                      6.boxH,
                      AppText.s12w400BdS(
                        subTitle ?? 'Lorem ipsum asdklamklsdkl',
                        fontSize: 10.sp,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: minExtent,
          child: AppBar(
            surfaceTintColor: Colors.transparent,
            backgroundColor:
                currentProgress > .45 ? ColorName.main : Colors.transparent,
            elevation: 0,
            foregroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Assets.icons.icBack.svg(
                package: 'gen',
              ),
            ),
            centerTitle: false,
            title: showAppBar
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AdvLogo(
                        imageUrl: logoUrl,
                        size: const Size(36, 36),
                      ),
                      6.boxW,
                      AppText.s14w400BdM(title ?? ''),
                    ],
                  )
                : null,
            actions: [
              IconButton(
                icon: Assets.icons.icShare.svg(package: 'gen'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  FloatingHeaderSnapConfiguration? get snapConfiguration => null;

  @override
  OverScrollHeaderStretchConfiguration? get stretchConfiguration => null;

  @override
  PersistentHeaderShowOnScreenConfiguration? get showOnScreenConfiguration =>
      null;

  @override
  TickerProvider? get vsync => null;
}

class CollapsibleVideoHeader implements SliverPersistentHeaderDelegate {
  CollapsibleVideoHeader({
    this.title,
    this.videoUrl,
    this.subTitle,
    this.logoUrl,
    this.time,
    this.viewCount,
    this.locationName,
  });

  final String? title;
  final String? subTitle;
  final DateTime? time;
  final int? viewCount;
  final String? logoUrl;
  final String? videoUrl;
  final String? locationName;

  @override
  double get maxExtent => 335;

  @override
  double get minExtent => kToolbarHeight + 58;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final width = MediaQuery.sizeOf(context).width;
    final progress = shrinkOffset / (maxExtent - minExtent);
    final currentProgress = progress.clamp(0.0, 1.0);

    final availableHeight =
        maxExtent - shrinkOffset.clamp(0.0, maxExtent - minExtent);

    final showAppBar = currentProgress > 0.95;

    final infoSectionHeight = _getInfoSectionHeight();
    final videoHeight =
        (availableHeight - infoSectionHeight).clamp(0.0, maxExtent);

    return SizedBox(
      height: availableHeight,
      width: width,
      child: Stack(
        children: [
          if (videoHeight > 0)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: videoHeight,
                  child: _buildFittedVideo(
                    width,
                    videoHeight,
                    shrinkOffset,
                  ),
                ),
                if (availableHeight > infoSectionHeight)
                  SizedBox(
                    height: infoSectionHeight,
                    child: _buildInfoSection(),
                  ),
              ],
            ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: minExtent,
            child: _buildAppBar(context, currentProgress, showAppBar),
          ),
        ],
      ),
    );
  }

  double _getInfoSectionHeight() {
    return 100;
  }

  Widget _buildFittedVideo(
    double containerWidth,
    double videoHeight,
    double offset,
  ) {
    return Container(
      height: videoHeight,
      width: containerWidth,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Transform.translate(
            offset: Offset(0, -(offset * 0.5)),
            child: SizedBox(
              width: containerWidth,
              height: videoHeight + (offset * 0.5).abs(),
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: containerWidth,
                  height: containerWidth * (9 / 16),
                  child: HeaderVideoPlayer(
                    videoUrl: videoUrl ?? '',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoSection() {
    return ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            AdvLogo(
              imageUrl: logoUrl,
              size: const Size(64, 64),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? '',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.calendar_today, size: 14),
                      const SizedBox(width: 8),
                      Text(
                        _formatDate(time),
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      const SizedBox(width: 12),
                      const Icon(Icons.visibility, size: 14),
                      const SizedBox(width: 8),
                      Text(
                        '${viewCount ?? 0} views',
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subTitle ?? 'Lorem ipsum dolor sit amet',
                    style: const TextStyle(fontSize: 10, color: Colors.grey),
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar(
    BuildContext context,
    double currentProgress,
    bool showAppBar,
  ) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor:
          currentProgress > .45 ? ColorName.main : Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      centerTitle: false,
      title: showAppBar
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AdvLogo(
                  imageUrl: logoUrl,
                  size: const Size(36, 36),
                ),
                const SizedBox(width: 6),
                Flexible(
                  child: Text(
                    title ?? '',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            )
          : null,
      actions: [
        IconButton(
          icon: const Icon(
            Icons.share,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  String _formatDate(DateTime? date) {
    if (date == null) return '';
    return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
  }

  @override
  FloatingHeaderSnapConfiguration? get snapConfiguration => null;

  @override
  OverScrollHeaderStretchConfiguration? get stretchConfiguration => null;

  @override
  PersistentHeaderShowOnScreenConfiguration? get showOnScreenConfiguration =>
      null;

  @override
  TickerProvider? get vsync => null;
}

class AdvLogo extends StatelessWidget {
  const AdvLogo({
    super.key,
    required this.imageUrl,
    required this.size,
  });

  final String? imageUrl;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(70),
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: imageUrl != null && imageUrl!.isNotEmpty
          ? ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: Image.network(
                ApiProvider().baseUrl + imageUrl!,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.image),
              ),
            )
          : const Icon(Icons.image),
    );
  }
}
