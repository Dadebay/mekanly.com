import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/components/inputs/app_input.dart';
import '../../../localization/extensions.dart';

class BottomPriceSelectorSheettFilter extends StatefulWidget {
  const BottomPriceSelectorSheettFilter({
    super.key,
    required this.minPriceController,
    required this.maxPriceController,
  });

  final TextEditingController minPriceController;
  final TextEditingController maxPriceController;

  @override
  BottomPriceSelectorSheetState createState() =>
      BottomPriceSelectorSheetState();
}

class BottomPriceSelectorSheetState
    extends State<BottomPriceSelectorSheettFilter> {
  void clear() {
    widget.minPriceController.clear();
    widget.maxPriceController.clear();
  }

  String? get minPrice => widget.minPriceController.text.isNotEmpty
      ? widget.minPriceController.text
      : null;

  String? get maxPrice => widget.maxPriceController.text.isNotEmpty
      ? widget.maxPriceController.text
      : null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Spacer(),
              Expanded(
                flex: 7,
                child: AppInput(
                  type: TextInputType.number,
                  hintText: context.translation.the_cheapest,
                  controller: widget.minPriceController,
                ),
              ),
             const SizedBox(
                width: 1,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30).w,
                color: const Color(0xff717171),
                width: 15.w,
                height: 1.5.w,
              ),
             const SizedBox(
                width: 1,
              ),
              Expanded(
                flex: 7,
                child: AppInput(
                  type: TextInputType.number,
                  hintText: context.translation.the_most_expensive,
                  controller: widget.maxPriceController,
                ),
              ),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
