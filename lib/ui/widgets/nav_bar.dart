import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:mekanly_com/localization/locals.dart';
import 'package:mekanly_com/ui/pages/add/category_selection_page.dart';
import 'package:mekanly_com/ui/pages/profile/auth/login_page.dart';
import 'package:mekanly_com/ui/style/app_sizes.dart';

import '/ui/navigation/navigation.dart';
import '../../config/config.dart';
import '../../logic/cubits/cubits.dart';
import '../../logic/cubits/navigator/nav_cubit.dart';
import '../style/style.dart';

class BottomNavBar extends StatelessWidget {
  final PageController controller;
  const BottomNavBar({super.key, required this.controller});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavCubit, NavState>(
      builder: (context, state) {
        print(controller.page);
        var bloc = context.watch<NavCubit>();
        return Container(
          decoration: BoxDecoration(
            // color: Colors.white : Colors.red,
            gradient: LinearGradient(
              colors: controller.page == 2.0 ? [Colors.white, Colors.white] : [AppColors.primary, AppColors.secondary],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            iconSize: 20,
            currentIndex: state.i,
            items: List.generate(
              3,
              (i) => builBottomNavBar(i, context, state.i, controller),
            ),
            unselectedItemColor: AppColors.white.withOpacity(.7),
            fixedColor: controller.page == 2.0 ? Colors.black : AppColors.white,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedLabelStyle: TextStyle(fontSize: AppSizes.pix12 + 1, fontFamily: robotoBold, color: controller.page == 2.0 ? Colors.black : AppColors.white),
            unselectedLabelStyle: TextStyle(
              fontSize: AppSizes.pix12,
              color: controller.page == 2.0 ? Colors.black : AppColors.white.withOpacity(.7),
            ),
            onTap: (u) => changeNav(u, bloc, context),
          ),
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
          blocIndex == i
              ? controller.page == 2.0
                  ? Colors.black
                  : AppColors.white
              : controller.page == 2.0
                  ? Colors.black
                  : AppColors.white.withOpacity(.7),
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
              // : const PostHousePage();
              : const CategorySelectionPage();
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
            ? Icon(IconlyBold.home, color: c, size: AppSizes.pix28)
            : Icon(IconlyLight.home, color: c, size: AppSizes.pix28)
        : i == 1
            ? i == blocIndex
                ? Icon(IconlyBold.plus, color: c, size: AppSizes.pix28)
                : Icon(IconlyLight.plus, color: c, size: AppSizes.pix28)
            : i == 2
                ? i == blocIndex
                    ? Icon(IconlyBold.profile, color: c, size: AppSizes.pix28)
                    : Icon(IconlyLight.profile, color: c, size: AppSizes.pix28)
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
