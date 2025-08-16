import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../../../core/components/app_btn.dart';
import '../../../../core/components/app_text.dart';
import '../../../../core/components/inputs/phone_filed.dart';
import '../../../../localization/extensions.dart';
import '../../../../product/base/base_status/base_status.dart';
import '../../../../product/constants/constants.dart';
import '../../../../product/helpers/helpers.dart';
import '../../../../product/injection/injector.dart';
import '../../../../remote/payloads/otp_payload.dart';
import '../../../../remote/response_error.dart';
import '../../../../utils/api_provider.dart';
import '../../../../utils/extensions.dart';
import '../../../menu/widgets/web_view_screen.dart' show WebViewScreen;
import '../otp/otp_view.dart';
import '../widgets/base_login_view.dart';
import 'cubit/login_cubit.dart';

class LoginPhoneNumberView extends StatelessWidget {
  LoginPhoneNumberView({super.key});

  static const routePath = '/login-phone-number-view';
  static const routeName = 'login-phone-number-view';

  static Widget builder(BuildContext context) {
    final bloc = injector<LoginCubit>();

    return BlocProvider(
      create: (context) => bloc,
      child: LoginPhoneNumberView(),
    );
  }

  final TextEditingController _phoneController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BaseLoginView(
      appBarTitle: context.translation.log_in,
      content: SingleChildScrollView(
        child: Form(
          key: _key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              80.boxH,
              Container(
                alignment: Alignment.center,
                child: Assets.icons.icLogoLogin.svg(
                  package: 'gen',
                  height: 50.w,
                ),
              ),
              56.boxH,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: AppText.s14w400BdM(
                      context.translation.enter_your_phone_number,
                      fontWeight: FontWeight.w500,
                      fontFamily: StringConstants.roboto,
                      fontSize: 18.sp,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              24.boxH,
              PhoneFiled(
                onTapOutside: () {
                  FocusScope.of(context).unfocus();
                },
                controller: _phoneController,
              ),
              20.boxH,
              Wrap(
                children: [
                  Text(
                    context.translation.dow_et_bnn,
                    style: TextStyle(
                      color: ColorName.black,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: StringConstants.roboto,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const WebViewScreen(
                      //       url: 'https://mekanly.com.tm/rules/tm',
                      //       title: 'Düzgünnama',
                      //     ),
                      //   ),
                      // );
                    },
                    child: Text(
                      context.translation.user_agreement,
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ),
                  Text(context.translation.we),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        // ignore: inference_failure_on_instance_creation
                        MaterialPageRoute(
                          builder: (context) => WebViewScreen(
                            url: '${ApiProvider().baseUrl}/privacypolicy/${Localizations.localeOf(context).languageCode}',
                            title: context.translation.rules,
                          ),
                        ),
                      );
                    },
                    child: Text(
                      context.translation.privacy_policy,
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ),
                  Text(
                    context.translation.dow_et_bn_dowam,
                    style: const TextStyle(fontFamily: StringConstants.roboto),
                  ),
                ],
              ),
              27.boxH,
              Row(
                children: [
                  Expanded(
                    child: BlocConsumer<LoginCubit, LoginState>(
                      listener: (context, state) {
                        state.status.maybeWhen(
                          success: () {
                            Helpers.showToastInfo(
                              context,
                              state.response?.message ?? '',
                            );
                            final data = OtpPayload(
                              phone: state.response?.user.phone ?? '',
                              token: state.response?.user.token ?? '',
                              code: '',
                            );
                            Navigator.push(
                              context,
                              // ignore: inference_failure_on_instance_creation
                              MaterialPageRoute(
                                builder: (context) => OtpView.builder(context, data),
                              ),
                            );
                          },
                          failure: (error) {
                            log('<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<$error');
                            Helpers.showToastInfo(
                              context,
                              error.getErrorMessage(context),
                            );
                          },
                          orElse: () {},
                        );
                      },
                      builder: (context, state) {
                        return GradientBtn(
                          isLoading: state.status.isLoading,
                          onTap: () async {
                            if (!(_key.currentState?.validate() ?? false)) {
                              return;
                            }

                            final phone =
                                // ignore: lines_longer_than_80_chars
                                '+993${_phoneController.text.trim().replaceAll(' ', '')}';
                            await context.read<LoginCubit>().login(phone);
                          },
                          text: context.translation.dow_et,
                          txtColor: ColorName.white,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
