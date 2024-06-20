// ignore_for_file: must_be_immutable

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../config/config.dart';
import '../../../../logic/cubits/auth/auth_cubit.dart';
import '../../../../logic/cubits/house/house_cubit.dart';
import '../../../style/app_sizes.dart';
import '../../../widgets/widgets.dart';
import '/localization/locals.dart';
import '/logic/cubits/navigator/nav_cubit.dart';
import '/ui/style/style.dart';

class SendSMSPage extends StatelessWidget {
  SendSMSPage({super.key, required this.usernameController, required this.phoneController, required this.passwordController});

  final TextEditingController usernameController;
  final TextEditingController phoneController;
  final TextEditingController passwordController;

  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    return StatefulBuilder(builder: (context, useState) {
      return Scaffold(
        backgroundColor: AppColors.background,
        appBar: TopBar(
          title: locals.verify,
          color: AppColors.secondaryTextDark,
          leading: _isClicked ? Container() : null,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 26.0, horizontal: 30),
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(20),
                child: Mekanly(),
              ),
              Padding(
                padding: const EdgeInsets.all(AppSizes.pix8),
                child: Tex('${locals.inOrderVerify} +993${phoneController.text} ${locals.to} +99364652712 ${locals.thenSendSMS}',
                        con: context, size: AppSizes.pix16, align: TextAlign.center, col: AppColors.primary)
                    .white,
              ),
              const SizedBox(height: 26.0),
              _isClicked
                  ? const CircularProgressIndicator()
                  : SizedBox(
                      height: AppSizes.pix40,
                      width: width(context) - AppSizes.pix88,
                      child: ActionButton(
                        color: AppColors.buttons,
                        size: AppSizes.pix16,
                        radius: AppSizes.pix12,
                        onTap: () async {
                          useState(() => _isClicked = true);

                          var auth = context.read<AuthCubit>();
                          var house = context.read<HouseCubit>();
                          var nav = context.read<NavCubit>();
                          Uri sms = Uri.parse('sms:+99364652712?body= .');
                          await launchUrl(sms).then((isLauch) async {
                            if (isLauch) {
                              await Future.delayed(const Duration(seconds: 3));

                              await auth.register(
                                usernameController.text,
                                '+993${phoneController.text}',
                                passwordController.text,
                              );

                              house.getAllHouses();
                              nav.navKey.currentState?.popUntil((route) => route.isFirst);
                            } else {}
                          });
                          useState(() => _isClicked = false);
                        },
                        label: locals.sendEmptySms.toUpperCase(),
                      ),
                    ),
              if (!_isClicked)
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: ActionButton(
                    label: locals.retry,
                    isTransparent: true,
                    color: Colors.transparent,
                    textColor: AppColors.linkText,
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                )
            ],
          ),
        ),
      );
    });
  }
}
