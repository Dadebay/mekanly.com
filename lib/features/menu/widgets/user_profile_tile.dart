import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../../core/components/app_text.dart';
import '../../../localization/extensions.dart';
import '../../../product/constants/constants.dart';
import '../../../product/transitions/custom_page_route.dart';
import '../../../utils/extensions.dart';
import '../../auth/cubit/auth_cubit.dart';
import '../../auth/login/phone_number/login_phone_number_view.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: SizedBox.shrink,
          authCheckingDone: (a, b, c, user) {
            BaseLogger.warning('UserProfileTile state: $user');
            if (user == null) {
              return Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 6).w,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: const Color(0xffBDBDBD),
                      width: .5.w,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 40.w,
                      height: 40.w,
                      child: Assets.icons.icMenuProfile.svg(package: 'gen'),
                    ),
                    12.boxW,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText.s12w400BdS(
                            context.translation.account,
                            fontFamily: StringConstants.roboto,
                            color: const Color(0xff222222),
                          ),
                          2.boxH,
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                // ignore: inference_failure_on_function_invocation
                                CustomPageRoute.slide(
                                  LoginPhoneNumberView.builder(context),
                                ),
                              );
                            },
                            child: AppText.underLined(
                              context.translation.log_in,
                              fontWeight: FontWeight.w500,
                              underlined: true,
                              color: const Color(0xff0D95E9),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
            return Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 6).w,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: const Color(0xffBDBDBD),
                    width: .5.w,
                  ),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 40.w,
                    height: 40.w,
                    child: Assets.icons.icMenuProfile.svg(package: 'gen'),
                  ),
                  12.boxW,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText.s12w400BdS(
                          context.translation.account,
                          fontFamily: StringConstants.roboto,
                          color: const Color(0xff222222),
                        ),
                        2.boxH,
                        AppText.s12w400BdS(
                          user.phone ?? '',
                          fontWeight: FontWeight.w400,
                          fontFamily: StringConstants.roboto,
                          color: const Color(0xff554F4F),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
