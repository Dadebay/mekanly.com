import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../../core/components/app_text.dart';
import '../../../localization/extensions.dart';
import '../../../product/constants/constants.dart';
import '../../../utils/extensions.dart';

class JustInOurAppWidget extends StatelessWidget {
  const JustInOurAppWidget({
    super.key,
    required this.onChanged,
    required this.value,
  });
  final ValueChanged<bool> onChanged;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged.call(!value),
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 5, 10, 5).w,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xff717171),
            width: 1.2.w,
          ),
          borderRadius: BorderRadius.circular(12).r,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.s12w400BdS(
                    context.translation.only_on_mekanly,
                    fontFamily: StringConstants.roboto,
                  ),
                  8.boxH,
                  AppText.s10w400LbS(
                    context.translation.exclusive_push,
                    fontFamily: StringConstants.roboto,
                    color: const Color(0xff717171),
                  ),
                ],
              ),
            ),
            12.boxW,
            Transform.scale(
              scale: .7,
              child: CupertinoSwitch(
                value: value,
                activeTrackColor: ColorName.black,
                onChanged: (value) => onChanged.call(!value),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
