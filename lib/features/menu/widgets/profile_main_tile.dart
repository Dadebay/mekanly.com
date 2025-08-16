import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/components/app_text.dart';
import '../../../localization/extensions.dart';
import '../../../product/constants/constants.dart';
import '../../../product/transitions/custom_page_route.dart';
import '../../../utils/extensions.dart';
import '../../add_house/widgets/dialogs.dart';
import '../../auth/cubit/auth_cubit.dart';
import '../../auth/login/phone_number/login_phone_number_view.dart';

class ProfileMainTile extends StatelessWidget {
  const ProfileMainTile({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    required this.isAuthNeeded,
    this.isLogOut = false,
    this.trailingWidget,
  });

  final String title;
  final Widget icon;
  final VoidCallback onTap;
  final bool isAuthNeeded;
  final bool isLogOut;
  final Widget? trailingWidget;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          authCheckingDone: (smallBanners, bigBanners, topAds, user) {
            if (user?.id == null && isLogOut) {
              return const SizedBox.shrink();
            }

            return InkWell(
              onTap: () {
                state.maybeWhen(
                  orElse: () {},
                  authCheckingDone: (smallBanners, bigBanners, topAds, user) {
                    if (user?.id == null && isAuthNeeded) {
                      ToNotifyUser.show(
                        context,
                        message:
                            // ignore: lines_longer_than_80_chars
                            context.translation.ul_gir,
                        onCancel: () => Navigator.pop(context),
                        onOk: () {
                          Navigator.pop(context);
                          Navigator.pushReplacement(
                            context,
                            CustomPageRoute.slide(
                              LoginPhoneNumberView.builder(context),
                            ),
                          );
                        },
                      );
                      return;
                    }
                    onTap.call();
                  },
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 20.w),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: const Color(0xffBDBDBD),
                      width: 0.5.w,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 22.w, height: 22.w, child: icon),
                    14.boxW,
                    AppText.s14w400BdM(
                      title,
                      fontWeight: FontWeight.w500,
                      fontFamily: StringConstants.manrope,
                    ),
                    const Spacer(),
                    trailingWidget ?? Icon(Icons.chevron_right, size: 20.w),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
