import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mekanly_com/localization/locals.dart';
import 'package:mekanly_com/ui/pages/profile/auth/login_page.dart';
import 'package:mekanly_com/ui/style/app_sizes.dart';

import '../../config/config.dart';
import '../../logic/cubits/cubits.dart';
import '../../logic/cubits/navigator/nav_cubit.dart';
import '../pages/add/post_house.dart';
import '../style/style.dart';
import '/ui/navigation/navigation.dart';

class BottomNavBar extends StatelessWidget {
  final PageController controller;
  const BottomNavBar({super.key, required this.controller});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavCubit, NavState>(
      builder: (context, state) {
        var bloc = context.watch<NavCubit>();
        return BottomNavigationBar(
          backgroundColor: AppColors.background,
          iconSize: 20,
          currentIndex: state.i,
          items: List.generate(
            3,
            (i) => builBottomNavBar(i, context, state.i, controller),
          ),
          selectedItemColor: AppColors.mainTextDark,
          unselectedItemColor: AppColors.statusBar.withOpacity(.7),
          selectedLabelStyle: const TextStyle(fontSize: AppSizes.pix12 - 1, color: AppColors.mainTextDark),
          unselectedLabelStyle: TextStyle(
            fontSize: AppSizes.pix12 - 1,
            color: AppColors.statusBar.withOpacity(.7),
          ),
          onTap: (u) => changeNav(u, bloc, context),
        );
      },
    );
  }

  BottomNavigationBarItem builBottomNavBar(
    int i,
    BuildContext context,
    int blocIndex,
    PageController controller, {
    Function()? onDoubleTap,
  }) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.jumpToPage(blocIndex);
    });
    return BottomNavigationBarItem(
      backgroundColor: AppColors.mainText,
      icon: GestureDetector(
        child: getIcons(
          i,
          blocIndex,
          blocIndex == i ? AppColors.mainTextDark : AppColors.statusBar.withOpacity(.7),
        ),
      ),
      label: getLabels(i, context),
    );
  }

  void changeNav(int i, NavCubit cubit, BuildContext context) {
    if (i == 1) {
      Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
        builder: (context) {
          return context.watch<AuthCubit>().state is! AuthSuccess
              ? LoginPage(
                  navIndex: i,
                )
              : const PostHousePage();
        },
      ));
    } else {
      cubit.navigateTo(i);
      controller.jumpToPage(i);
      cubit.navigateTo(i);
    }
  }

  getIcons(int i, int blocIndex, Color c) {
    return i == 0
        ? i == blocIndex
            ? SvgAsset('main', c, size: AppSizes.pix28)
            : SvgAsset('main', c, size: AppSizes.pix28)
        : i == 1
            ? i == blocIndex
                ? SvgAsset("basket", c, size: AppSizes.pix28)
                : SvgAsset("basket", c, size: AppSizes.pix28)
            : i == 2
                ? i == blocIndex
                    ? SvgAsset("acc", c, size: AppSizes.pix28)
                    : SvgAsset("acc", c, size: AppSizes.pix28)
                : '';
  }

  getRoutes(int i) {
    return i == 0
        ? Routes.home
        : i == 2
            ? Routes.profile
            : '';
  }

  getLabels(int i, BuildContext ctx) {
    var local = Locals.of(ctx);
    return i == 0
        ? local.home
        : i == 1
            ? local.add
            : local.profil;
  }
}
