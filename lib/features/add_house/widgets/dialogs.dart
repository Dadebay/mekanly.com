import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import '../../../core/components/app_btn.dart';
import '../../../core/components/app_text.dart';
import '../../../core/components/loading_indicator.dart';
import '../../../localization/extensions.dart';
import '../../../product/constants/constants.dart';
import '../../../utils/extensions.dart';

class BaseRoundedDialogContainer extends StatelessWidget {
  const BaseRoundedDialogContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10).r,
      ),
      clipBehavior: Clip.hardEdge,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10).r,
          color: ColorName.white,
        ),
        child: child,
      ),
    );
  }
}

class AskIfAgreed extends StatefulWidget {
  const AskIfAgreed({super.key});

  static Future<bool?> show(BuildContext context) async {
    return showDialog<bool?>(
      context: context,
      barrierColor: Colors.black54,
      builder: (context) => const AskIfAgreed(),
    );
  }

  @override
  State<AskIfAgreed> createState() => _AskIfAgreedState();
}

class _AskIfAgreedState extends State<AskIfAgreed> {
  @override
  Widget build(BuildContext context) {
    return BaseRoundedDialogContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.s14w400BdM(
            context.translation.verification,
            fontFamily: StringConstants.roboto,
            fontSize: 15.sp,
          ),
          18.boxH,
          AppText.s14w400BdM(
            context.translation.are_you_sure_you_want_to_add_this_announcement,
            fontFamily: StringConstants.roboto,
            fontSize: 15.sp,
            color: const Color(0xff555555),
          ),
          8.boxH,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextBtn(
                onTap: () {
                  Navigator.pop(context, false);
                },
                child: AppText.s12w400BdS(
                  context.translation.cancel,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              14.boxW,
              TextBtn(
                onTap: () {
                  Navigator.pop(context, true);
                },
                child: AppText.s12w400BdS(
                  context.translation.yes,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ToNotifyUser extends StatefulWidget {
  const ToNotifyUser({
    super.key,
    this.title,
    this.message,
    this.onOk,
    this.onCancel,
    this.okText,
    this.cancelText,
  });

  final String? title;
  final String? message;
  final String? okText;
  final String? cancelText;
  final VoidCallback? onOk;
  final VoidCallback? onCancel;

  static Future<bool?> show(
    BuildContext context, {
    String? title,
    String? message,
    VoidCallback? onOk,
    VoidCallback? onCancel,
    String? okText,
    String? cancelText,
  }) async {
    return showDialog<bool?>(
      context: context,
      barrierColor: Colors.black54,
      barrierDismissible: false,
      builder: (context) => ToNotifyUser(
        title: title,
        message: message,
        onOk: onOk,
        onCancel: onCancel,
        cancelText: cancelText,
        okText: okText,
      ),
    );
  }

  @override
  State<ToNotifyUser> createState() => _ToNotifyUserState();
}

class _ToNotifyUserState extends State<ToNotifyUser> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (Navigator.canPop(context)) {
          Navigator.pop(context);
        }
        return Future.value(false);
      },
      child: BaseRoundedDialogContainer(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            18.boxH,
            AppText.s14w400BdM(
              widget.message ?? context.translation.moderation_visible,
              fontFamily: StringConstants.roboto,
              fontSize: 15.sp,
              color: const Color(0xff555555),
            ),
            8.boxH,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (widget.onCancel != null) ...[
                  TextBtn(
                    onTap: () {
                      widget.onCancel!();
                    },
                    child: AppText.s12w400BdS(
                      widget.cancelText ?? context.translation.cancel,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  14.boxW,
                ],
                TextBtn(
                  onTap: () {
                    if (widget.onOk != null) {
                      widget.onOk!();
                      return;
                    }
                    Navigator.pop(context, true);
                  },
                  child: AppText.s12w400BdS(
                    widget.okText ?? 'OK',
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TitledLoadingDialog extends StatefulWidget {
  const TitledLoadingDialog({super.key});

  static Future<bool?> show(BuildContext context) async {
    return showDialog<bool?>(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.black54,
      builder: (context) => const TitledLoadingDialog(),
    );
  }

  @override
  State<TitledLoadingDialog> createState() => _TitledLoadingDialogState();
}

class _TitledLoadingDialogState extends State<TitledLoadingDialog> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: BaseRoundedDialogContainer(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: AppText.s14w400BdM(
                    context.translation.please_wait_a_moment,
                    fontFamily: StringConstants.roboto,
                    fontSize: 15.sp,
                  ),
                ),
              ),
              18.boxW,
              SizedBox(
                height: 30.w,
                child: LoadingIndicator.circle(
                  color: ColorName.black,
                ),
              ).toCenter(),
            ],
          ),
        ]),
      ),
    );
  }
}
