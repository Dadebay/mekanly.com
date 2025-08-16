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
import '../../user_business_profile/view/user_business_profile_view.dart';

class UserBusinessProfileTile extends StatelessWidget {
  const UserBusinessProfileTile({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: SizedBox.shrink,
          authCheckingDone: (a, b, c, user) {
            if (user?.shopId == null) {
              return const SizedBox.shrink();
            }
            return InkWell(
              onTap: () {
                final id = user?.shopId;
                if (id != null) {
                 
                  Navigator.push(
                    context,
                    // ignore: inference_failure_on_function_invocation
                    CustomPageRoute.slide(
                      UserBusinessProfileView(id: id),
                    ),
                  );
                }
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 20,
                ).w,
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
                      width: 22.w,
                      height: 22.w,
                      child: Assets.icons.icBusinessProfile.svg(package: 'gen'),
                    ),
                    14.boxW,
                    AppText.s14w400BdM(
                      context.translation.my_business_account,
                      fontWeight: FontWeight.w500,
                      fontFamily: StringConstants.manrope,
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 24.w,
                      child: Assets.icons.icMyBusiness.svg(
                        package: 'gen',
                      ),
                    ),
                    13.boxW,
                    Icon(
                      Icons.chevron_right,
                      size: 20.w,
                    ),
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
