import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../localization/extensions.dart';
import '../../../product/constants/constants.dart';
import '../../../utils/extensions.dart';
import '../../house_filters/widgets/price_selector_bottom_sheet_filter.dart';

class BottomPriceSelectorSheet extends StatefulWidget {
  final int? initialMin;
  final int? initialMax;

  const BottomPriceSelectorSheet({
    super.key,
    this.initialMin,
    this.initialMax,
  });

  @override
  State<BottomPriceSelectorSheet> createState() =>
      _BottomPriceSelectorSheetState();
}

class _BottomPriceSelectorSheetState extends State<BottomPriceSelectorSheet> {
  final TextEditingController minPriceController = TextEditingController();
  final TextEditingController maxPriceController = TextEditingController();

  @override
  void initState() {
    super.initState();
   
    if (widget.initialMin != null) {
      minPriceController.text = widget.initialMin.toString();
    }
    if (widget.initialMax != null) {
      maxPriceController.text = widget.initialMax.toString();
    }
  }

  @override
  void dispose() {
    minPriceController.dispose();
    maxPriceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom + 15.h,
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 8.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Üstki panel
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
                Text(
                  context.translation.price,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: StringConstants.roboto,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, {
                      'min': null,
                      'max': null,
                    });
                  },
                  child: Text(
                    context.translation.clean,
                    style: const TextStyle(
                      color: Color(0xff0D95E9),
                      fontWeight: FontWeight.w500,
                      fontFamily: StringConstants.roboto,
                    ),
                  ),
                ),
              ],
            ),
            20.boxH,
            BottomPriceSelectorSheettFilter(
              minPriceController: minPriceController,
              maxPriceController: maxPriceController,
            ),
            24.boxH,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 14.h),
                  backgroundColor: const Color(0xff3A8BCF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  final min = int.tryParse(minPriceController.text);
                  final max = int.tryParse(maxPriceController.text);

                  Navigator.pop(context, {
                    'min': min,
                    'max': max,
                  });
                },
                child: Text(
                  context.translation.verification,
                  style: const TextStyle(
                    fontFamily: StringConstants.roboto,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
