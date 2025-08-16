import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/extensions.dart';
import '../models/business_product_model.dart' hide ProductImage;

class BusinessProfileCarouselSlider extends StatefulWidget {
  const BusinessProfileCarouselSlider({super.key, this.imgUrls});
  final List<ProductImageBusiness>? imgUrls;

  @override
  State<BusinessProfileCarouselSlider> createState() =>
      _BusinessProfileCarouselSliderState();
}

class _BusinessProfileCarouselSliderState
    extends State<BusinessProfileCarouselSlider> {
  final PageController _controller = PageController(keepPage: false);
  final ValueNotifier<int> _pageNotifier = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width - 24.w) * 0.5;
    final height = context.mediaQuery.size.height;
    return Stack(
      children: [
        PageView.builder(
          itemCount: widget.imgUrls?.length,
          controller: _controller,
          onPageChanged: (value) => _pageNotifier.value = value,
          itemBuilder: (context, index) {
            final img = widget.imgUrls?[index];
            return OverflowBox(
              child: CustomNetworkImage(
                memCache: CustomMemCache(
                  height: height.toInt().withDevicePixel(context),
                  width: width.toInt().withDevicePixel(context),
                ),
                imageUrl: img?.url,
              ),
            );
          },
        ),
        if (widget.imgUrls!.length > 2)
          Positioned(
            bottom: 6,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16).w,
              height: 10.h,
              alignment: Alignment.center,
              child: ValueListenableBuilder<int>(
                valueListenable: _pageNotifier,
                builder: (_, page, __) {
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      widget.imgUrls!.length,
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        width: index == (page % widget.imgUrls!.length)
                            ? 10.h * 0.5
                            : 10.h * 0.4,
                        height: index == (page % widget.imgUrls!.length)
                            ? 10.h * 0.5
                            : 10.h * 0.4,
                        margin: const EdgeInsets.symmetric(horizontal: 3).w,
                        decoration: BoxDecoration(
                          color: index == (page % widget.imgUrls!.length)
                              ? Colors.white
                              : Colors.white60,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
      ],
    );
  }
}