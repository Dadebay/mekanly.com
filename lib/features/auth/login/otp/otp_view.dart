import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../../../core/components/app_btn.dart';
import '../../../../core/components/app_text.dart';
import '../../../../localization/extensions.dart';
import '../../../../product/base/base_status/base_status.dart';
import '../../../../product/constants/constants.dart';
import '../../../../product/helpers/helpers.dart';
import '../../../../product/injection/injector.dart';
import '../../../../product/transitions/custom_page_route.dart';
import '../../../../remote/payloads/otp_payload.dart';
import '../../../../remote/response_error.dart';
import '../../../../utils/extensions.dart';
import '../../../root/view/root_view.dart';
import '../../cubit/auth_cubit.dart';
import '../widgets/base_login_view.dart';
import 'cubit/otp_cubit.dart';
import 'pin_put_widget.dart';
import 'widgets/count_down_widget.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key, required this.payload});

  static const routePath = '/otp-view';
  static const routeName = 'otp-view';

  static Widget builder(BuildContext context, OtpPayload payload) {
    return BlocProvider(
      create: (_) => injector<OtpCubit>(),
      child: OtpView(payload: payload),
    );
  }

  final OtpPayload payload;

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  ValueNotifier<bool> canTryAgain = ValueNotifier(false);

  @override
  void dispose() {
    _controller.dispose();
    canTryAgain.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseLoginView(
      appBarTitle: context.translation.verify,
      content: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
              35.boxH,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      context.translation.enter_code,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: StringConstants.roboto,
                        color: const Color.fromARGB(255, 25, 105, 227),
                      ),
                    ),
                  ),
                ],
              ),
              10.boxH,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.payload.phone,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: StringConstants.roboto,
                      color: const Color.fromARGB(255, 55, 65, 81),
                    ),
                  ),
                ],
              ),
              2.boxH,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    context.translation.phone_number_belgi,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: StringConstants.roboto,
                      color: const Color.fromARGB(255, 55, 65, 81),
                    ),
                  ),
                ],
              ),
              26.boxH,
              PinPutWidget(
                controller: _controller,
                onCompleted: (value) {
                  if (_formKey.currentState?.validate() ?? false) {
                    FocusScope.of(context).unfocus();
                  }
                },
                onSubmitted: (value) {
                  if (_formKey.currentState?.validate() ?? false) {
                    FocusScope.of(context).unfocus();
                  }
                },
              ).toCenter(),
              27.boxH,
              CountDownWidget(
                callback: () {
                  canTryAgain.value = !canTryAgain.value;
                },
                secondsToAwait: 180,
                text: '',
              ).toCenter(),
              27.boxH,
              Row(
                children: [
                  Expanded(
                    child: BlocListener<AuthCubit, AuthState>(
                      listener: (context, state) {
                        state.maybeWhen(
                          orElse: () {},
                          authCheckingFailure: () {
                            Helpers.showToastInfo(
                              context,
                              context.translation.user_is_not_logged_in,
                            );
                          },
                          authCheckingDone: (a, b, c, user) {
                            if (user != null) {
                              Helpers.showToastInfo(
                                context,
                                context.translation.user_is_logged_in,
                              );
                              Navigator.pushAndRemoveUntil(
                                context,
                                // ignore: inference_failure_on_function_invocation
                                CustomPageRoute.slide(RootView()),
                                (route) => false,
                              );
                            }
                          },
                        );
                      },
                      child: BlocConsumer<OtpCubit, OtpState>(
                        listener: (context, state) {
                          state.status.maybeWhen(
                            success: () {
                              if (state.response?.user == null) return;

                              context.read<AuthCubit>().checkState();
                            },
                            failure: (error) {
                              log('<<<<<<<<<<<<<<<<<<<<<<<<<<<$error');
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
                              if (!(_formKey.currentState?.validate() ??
                                  false)) {
                                return;
                              }
                              final data = widget.payload.copyWith(
                                code: _controller.text.trim(),
                              );
                              await context.read<OtpCubit>().verify(data);
                            },
                            text: context.translation.verify,
                            txtColor: ColorName.white,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              18.boxH,
              ValueListenableBuilder<bool>(
                valueListenable: canTryAgain,
                builder: (_, can, __) {
                  return TextBtn(
                    onTap: () {},
                    child: AppText.s14w400BdM(
                      context.translation.try_again,
                      color: !can
                          // ignore: deprecated_member_use
                          ? ColorName.addressDate.withOpacity(.5)
                          : ColorName.addressDate,
                      fontWeight: FontWeight.w500,
                    ),
                  ).toCenter();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
