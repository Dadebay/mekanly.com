import 'dart:async';

import 'package:flutter/material.dart';

class AppSlider extends StatefulWidget {
  const AppSlider({
    super.key,
    this.isFinite = false,
    this.dotSlotSize,
    required this.children,
    required this.bannerAspectRatio,
    this.alignment,
  });

  final double? dotSlotSize;
  final List<Widget> children;
  final double bannerAspectRatio;
  final bool isFinite;
  final Alignment? alignment;

  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider>
    with AutomaticKeepAliveClientMixin {
  final PageController _controller = PageController(keepPage: false);
  int _page = 0;
  StreamSubscription<void>? _periodicSubs;

  void _timerCallBack(_) {
    var target = _page + 1;
    if (target >= widget.children.length && widget.isFinite) {
      target = 0;
    }
    _controller.animateToPage(
      target,
      duration: const Duration(milliseconds: 400),
      curve: Curves.ease,
    );
  }

  @override
  void initState() {
    _periodicSubs = Stream<void>.periodic(const Duration(seconds: 5))
        .listen(_timerCallBack);
    super.initState();
  }

  @override
  void dispose() {
    _periodicSubs?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      children: [
        AspectRatio(
          aspectRatio: widget.bannerAspectRatio,
          child: PageView.builder(
            itemCount: widget.isFinite ? widget.children.length : null,
            controller: _controller,
            itemBuilder: (context, index) =>
                widget.children[index % widget.children.length],
            onPageChanged: (page) {
              setState(() {
                _page = page;
              });
            },
          ),
        ),
        if (widget.dotSlotSize != null)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: widget.dotSlotSize,
            alignment: widget.alignment ?? Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                widget.children.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: index == (_page % widget.children.length)
                      ? widget.dotSlotSize! * 0.4
                      : widget.dotSlotSize! * 0.3,
                  height: index == (_page % widget.children.length)
                      ? widget.dotSlotSize! * 0.4
                      : widget.dotSlotSize! * 0.3,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: index == (_page % widget.children.length)
                            ? const Color.fromRGBO(0, 0, 0, 0.2)
                            : Colors.grey.shade200,
                        spreadRadius: widget.dotSlotSize! * 0.15,
                      ),
                    ],
                    color: index == (_page % widget.children.length)
                        ? Theme.of(context).colorScheme.primary
                        : Colors.grey.shade400,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
