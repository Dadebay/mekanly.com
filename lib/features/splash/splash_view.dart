import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../core/components/loading_indicator.dart';
import '../../product/helpers/helpers.dart';
import '../../product/transitions/custom_page_route.dart';
import '../../utils/extensions.dart';
import '../auth/cubit/auth_cubit.dart';
import '../home/cubit/home_cubit.dart';
import '../root/view/root_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  static const routePath = '/splash-view';
  static const routeName = 'splash-view';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    checkState();
    super.initState();
  }

  Future<void> checkState() async {
    await context.read<AuthCubit>().checkState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          // ignore: flutter_style_todos
          if (state is AuthCheckingDone) {
            final smallBanners = state.smallBanners;
            final bigBanners = state.bigBanners;
            final topAds = state.topAds;
            context.read<HomeCubit>().init(
                  onSmallBanners: smallBanners,
                  onBigBanners: bigBanners,
                  onTopAds: topAds,
                );
            Navigator.pushAndRemoveUntil(
              context,
              CustomPageRoute.slide(
                RootView(),
              ),
              (r) => false,
            );
          }

          if (state is AuthCheckingFailure) {
            Helpers.showToastInfo(
              context,
              'Network connection failed. Please try again.',
            );
          }
        },
        builder: (context, state) {
          return SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    width: 1.sw * .75,
                    height: 140.h,
                    child: Assets.icons.icLogoLogin.svg(package: 'gen'),
                  ),
                ),
                if (state is AuthCheckingFailure)
                  IconButton(
                    onPressed: checkState,
                    icon: Assets.icons.icRefresh.svg(
                      package: 'gen',
                      colorFilter: const ColorFilter.mode(
                        Colors.black,
                        BlendMode.srcIn,
                      ),
                    ),
                  )
                else
                  LoadingIndicator.circle(
                    size: const Size(32, 32),
                  ),
                32.boxH,
              ],
            ),
          );
        },
      ),
    );
  }
}
