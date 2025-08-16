import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/components/app_text.dart';
import '../../../core/components/inputs/app_input.dart';
import '../../../localization/extensions.dart';
import '../../../product/constants/constants.dart';
import '../../../utils/extensions.dart';

class PriceSelectorWidget extends StatelessWidget {
  const PriceSelectorWidget({
    super.key,
    required this.minPriceController,
    required this.maxPriceController,
  });
  final TextEditingController minPriceController;
  final TextEditingController maxPriceController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.s14w400BdM(
            context.translation.price,
            fontFamily: StringConstants.roboto,
            fontSize: 15.sp,
          ),
          16.boxH,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Spacer(),
              Expanded(
                flex: 2,
                child: AppInput(
                  type: TextInputType.number,
                  hintText: context.translation.the_cheapest,
                  controller: minPriceController,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30).w,
                color: const Color(0xff717171),
                width: 15.w,
                height: 1.5.w,
              ),
              Expanded(
                flex: 2,
                child: AppInput(
                  type: TextInputType.number,
                  hintText: context.translation.the_most_expensive,
                  controller: maxPriceController,
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
