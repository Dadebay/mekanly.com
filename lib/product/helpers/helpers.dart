import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../core/components/app_text.dart';

import '../../utils/extensions.dart';
import '../../utils/toast.dart';

class Helpers {
  Helpers._();

  static void showToastInfo(BuildContext context, String title) {
    return ToastUtil.show(
      context,
      ToastDecorator(
        widget: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: AppText.s12w400BdS(
                title,
                color: ColorName.white,
              ).toCenter(),
            ),
          ],
        ),
        backgroundColor: Colors.black87,
      ),
      duration: 4,
    );
  }

  static void showToastSuccess(BuildContext context, String title) {
    return ToastUtil.show(
      context,
      ToastDecorator(
        widget: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 14.w,
              width: 14.w,
            ),
            8.boxW,
            AppText.s10w400LbS(
              title,
              color: ColorName.white,
            ),
          ],
        ),
        backgroundColor: ColorName.delivery,
      ),
      duration: 4,
    );
  }

  static void showToastCopyy(BuildContext context, String title) {
    return ToastUtil.show(
      context,
      ToastDecorator(
        widget: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 14.w,
              width: 14.w,
            ),
            8.boxW,
            AppText.s10w400LbS(
              title,
              color: ColorName.white,
            ),
          ],
        ),
        backgroundColor: ColorName.addressDate,
      ),
      duration: 4,
    );
  }

  static void showToastError(BuildContext context, String title) {
    return ToastUtil.show(
      context,
      ToastDecorator(
        widget: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 14.w,
              width: 14.w,
              child: const Icon(
                Icons.error_outline,
                color: Colors.white,
              ),
            ),
            8.boxW,
            AppText.s10w400LbS(
              title,
              color: ColorName.white,
            ),
          ],
        ),
        backgroundColor: Colors.redAccent,
      ),
      duration: 4,
    );
  }
}
