import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../logic/cubits/auth/auth_cubit.dart';
import '../../../style/app_sizes.dart';
import '../../../style/style.dart';
import '/localization/locals.dart';
import '/ui/widgets/action_button.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);
    return AlertDialog(
      insetPadding: const EdgeInsets.all(20),
      actionsPadding: const EdgeInsets.all(AppSizes.pix10),
      actionsAlignment: MainAxisAlignment.center,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.pix10),
      ),
      title: Tex(
        locals.logout,
        con: context,
      ),
      content: Tex(
        locals.reallyLogout,
        con: context,
      ),
      actions: [
        DialogActions(
          locals: locals,
          onDeny: () => Navigator.of(context).pop(false),
          onSubmit: () {
            context.read<AuthCubit>().logout();
            Navigator.of(context).pop(true);
          },
        ),
      ],
    );
  }
}

class DialogActions extends StatelessWidget {
  const DialogActions({
    super.key,
    required this.locals,
    required this.onDeny,
    this.hasPop = true,
    required this.onSubmit,
    this.applyText,
    this.denyText,
  });

  final Locals locals;
  final bool hasPop;
  final Function() onDeny;
  final Function() onSubmit;
  final String? applyText;
  final String? denyText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 7,
          child: hasPop
              ? ActionButton(
                  size: 15,
                  onTap: onDeny,
                  label: denyText ?? locals.deny,
                )
              : Container(),
        ),
        const SizedBox(width: AppSizes.pix8),
        Expanded(
          flex: 8,
          child: ActionButton(
            color: AppColors.buttons,
            size: AppSizes.pix16,
            onTap: onSubmit,
            label: applyText ?? locals.apply,
          ),
        ),
      ],
    );
  }
}
