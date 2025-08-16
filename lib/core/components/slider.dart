import 'dart:async';
import 'package:flutter/material.dart';


class AppSlider extends StatefulWidget {
  const AppSlider({
    super.key,
    this.isFinite = false,
    this.alignment,
    this.imgs,
  });

  final bool isFinite;
  final Alignment? alignment;
  final List<Widget>? imgs;

  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider>
    with AutomaticKeepAliveClientMixin {
  int _page = 0;
  StreamSubscription<void>? _periodicSubs;
  final PageController _controller = PageController(
    keepPage: false,
  );

  void _timerCallBack(_) {
    var target = _page + 1;
    if (target > ((widget.imgs?.length ?? 1) - 1)) {
      target = 0;
    }
    _controller.animateToPage(
      target,
      duration: const Duration(milliseconds: 400),
      curve: Curves.ease,
    );
  }

  final _timerDuration = const Duration(seconds: 5);

  @override
  void initState() {
    super.initState();

    _periodicSubs =
        Stream<void>.periodic(_timerDuration).listen(_timerCallBack);
  }

  @override
  void dispose() {
    _periodicSubs?.cancel();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    const aspect = 351 / 150;

    return AspectRatio(
      aspectRatio: aspect,
      child: PageView.builder(
        controller: _controller,
        itemCount: widget.imgs?.length,
        onPageChanged: (page) {
          setState(() {
            _page = page;
          });
        },
        itemBuilder: (context, index) {
          final img = widget.imgs?[index];
          return Padding(
            padding: const EdgeInsets.fromLTRB(8, 12, 8, 0),
            child: img,
          );
          // return ClipRRect(
          //   borderRadius: BorderRadius.circular(16),
          //   child: CustomNetworkImage(
          //     imageUrl: img,
          //     memCache: const CustomMemCache(
          //       height: 191 * 2,
          //       width: 327 * 2,
          //     ),
          //     size: const Size(327, 191),
          //   ),
          // );
        },
      ),
    );
  }
}
