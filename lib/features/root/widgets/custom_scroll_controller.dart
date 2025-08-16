
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomScrollController extends ScrollController {
  CustomScrollController({
    this.appBarVisibilityThreshold = 56.0,
    super.initialScrollOffset,
    super.debugLabel,
    super.keepScrollOffset,
  });
  final ValueNotifier<bool> appBarVisibility = ValueNotifier<bool>(true);
  final ValueNotifier<double> scrollOffset = ValueNotifier<double>(0);
  final double appBarVisibilityThreshold;

  @override
  void attach(ScrollPosition position) {
    super.attach(position);
    position.isScrollingNotifier.addListener(_handleScrollingChanged);
    position.addListener(_handleScrollChanged);
  }

  @override
  void detach(ScrollPosition position) {
    position.isScrollingNotifier.removeListener(_handleScrollingChanged);
    position.removeListener(_handleScrollChanged);
    super.detach(position);
  }

  void _handleScrollingChanged() {
    if (positions.isNotEmpty) {
      final position = positions.first;

      if (position.userScrollDirection == ScrollDirection.reverse) {
        if (appBarVisibility.value && offset > appBarVisibilityThreshold) {
          appBarVisibility.value = false;
        }
      } else if (position.userScrollDirection == ScrollDirection.forward) {
        if (!appBarVisibility.value) {
          appBarVisibility.value = true;
        }
      }
    }
  }

  void _handleScrollChanged() {
    if (positions.isNotEmpty) {
      final position = positions.first;
      // Update scroll offset for parallax effect
      scrollOffset.value = position.pixels;

      if (position.pixels <= appBarVisibilityThreshold &&
          !appBarVisibility.value) {
        appBarVisibility.value = true;
      }
    }
  }

  void scrollToTop({Duration duration = const Duration(milliseconds: 300)}) {
    if (hasClients) {
      appBarVisibility.value = true;
      animateTo(
        0,
        duration: duration,
        curve: Curves.easeOut,
      );
    }
  }

  @override
  void dispose() {
    appBarVisibility.dispose();
    scrollOffset.dispose();
    super.dispose();
  }
}

class CustomSliverAppBar extends StatefulWidget {
  const CustomSliverAppBar({
    super.key,
    required this.title,
    this.bottom,
    required this.backgroundColor,
    this.shadowColor,
    this.height = 65.0,
    this.bottomHeight = 48.0,
    this.floating = true,
    required this.visibilityNotifier,
    required this.scrollController,
    this.currentTabIndex = 0,
  });
  final Widget title;
  final Widget? bottom;
  final Color backgroundColor;
  final Color? shadowColor;
  final double height;
  final double bottomHeight;
  final bool floating;
  final ValueNotifier<bool> visibilityNotifier;
  final CustomScrollController scrollController;
  final int currentTabIndex;

  @override
  State<CustomSliverAppBar> createState() => _CustomSliverAppBarState();
}

class _CustomSliverAppBarState extends State<CustomSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: widget.visibilityNotifier,
      builder: (context, isVisible, _) {
        return SliverPersistentHeader(
          floating: widget.floating,
          pinned: true,
          delegate: _CustomSliverAppBarDelegate(
            title: widget.title,
            bottom: widget.bottom!,
            backgroundColor: widget.backgroundColor,
            shadowColor: widget.shadowColor,
            height: widget.height,
            bottomHeight: widget.bottomHeight,
            visible: isVisible,
            scrollController: widget.scrollController,
            currentTabIndex: widget.currentTabIndex,
          ),
        );
      },
    );
  }
}

class _CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _CustomSliverAppBarDelegate({
    required this.title,
    required this.bottom,
    required this.backgroundColor,
    this.shadowColor,
    required this.height,
    required this.bottomHeight,
    required this.visible,
    required this.scrollController,
    this.currentTabIndex = 0,
  });
  final Widget title;
  final Widget bottom;
  final Color backgroundColor;
  final Color? shadowColor;
  final double height;
  final double bottomHeight;
  final bool visible;
  final CustomScrollController scrollController;
  final int currentTabIndex;

  @override
  double get minExtent => 56;

  @override
  double get maxExtent => 100;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    // Calculate title offset - only apply parallax effect in first tab
    return ValueListenableBuilder<double>(
      valueListenable: scrollController.scrollOffset,
      builder: (context, scrollOffset, _) {
        var titleOffset = 0.0;

        if (currentTabIndex == 0) {
          titleOffset = scrollOffset.clamp(0.0, 56);
        }

        // final titleH = currentTabIndex == 0 ? 56.0 : 0.0;

        return ColoredBox(
          color: backgroundColor,
          child: Stack(
            children: [
              // Title with parallax effect
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                top: -titleOffset,
                left: 0,
                right: 0,
                height: 56,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.w,
                  ),
                  color: backgroundColor,
                  child: title,
                ),
              ),

              // Bottom navigation - always visible at the bottom
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                height: bottomHeight,
                child: Container(
                  decoration: BoxDecoration(
                    color: backgroundColor,
                  ),
                  child: bottom,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  bool shouldRebuild(covariant _CustomSliverAppBarDelegate oldDelegate) {
    return oldDelegate.visible != visible ||
        oldDelegate.bottomHeight != bottomHeight ||
        oldDelegate.height != height ||
        oldDelegate.currentTabIndex != currentTabIndex;
  }
}
