import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../product/constants/constants.dart';
import '../../utils/extensions.dart';
import 'app_btn.dart';
import 'app_text.dart';

class EmptySearchWidget extends StatelessWidget {
  const EmptySearchWidget({
    super.key,
    this.txt,
    required this.onTryAgain,
  });
  final String? txt;
  final VoidCallback onTryAgain;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          child: Assets.icons.icSearch.svg(package:
            'gen',
            height: 40.w,
            colorFilter: const ColorFilter.mode(
              Color(0xff717171),
              BlendMode.srcIn,
            ),
          ),
        ),
        4.boxH,
        AppText.s14w400BdM(
          txt ?? 'Hiç zat tapylmady',
          fontFamily: StringConstants.roboto,
          fontWeight: FontWeight.w500,
          fontSize: 16.sp,
          color: ColorName.addressDate,
        ),
        4.boxH,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppBtn(
              onTap: onTryAgain,
              text: 'Täzeden synanyş',
            ),
          ],
        ),
      ],
    );
  }
}
