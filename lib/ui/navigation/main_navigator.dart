import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mekanly_com/logic/cubits/categs/categs_cubit.dart';
import 'package:mekanly_com/logic/cubits/house/house_cubit.dart';
import 'package:mekanly_com/logic/data/net.dart';
import 'package:mekanly_com/ui/navigation/navigation.dart';
import 'package:mekanly_com/ui/pages/profile/auth/logout_dialog.dart';

import '../../localization/locals.dart';
import '../style/app_sizes.dart';
import '../style/style.dart';
import '../widgets/nav_bar.dart';
import '/logic/cubits/navigator/nav_cubit.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({super.key});

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
  static void setStatee(BuildContext context) {
    _MainNavigatorState? state = context.findAncestorStateOfType<_MainNavigatorState>();
    state!.setStatee();
  }
}

class _MainNavigatorState extends State<MainNavigator> {
  bool isAuth = false;

  var fractions = [
    const HomeRouter(),
    const CartRouter(),
    const ProfileRouter(),
  ];

  PageController controller = PageController(initialPage: 0);

  showRetryDialog(BuildContext context) async {
    await Net.checkInternet().then((value) {
      if (!value) {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (shx) => NoInternetDialog(shx: context),
        );
      }
      return value;
    });
  }

  _onPageChanged(BuildContext context, int e) {
    var cubit = context.read<NavCubit>();
    cubit.navigateTo(e);
  }

  @override
  void initState() {
    showRetryDialog(context);
    super.initState();
  }

  DateTime? currentPress;
  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        final now = DateTime.now();
        if (currentPress == null || now.difference(currentPress!) > const Duration(seconds: 2)) {
          currentPress = now;

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              margin: const EdgeInsets.symmetric(vertical: AppSizes.pix20, horizontal: AppSizes.pix40),
              shape: const StadiumBorder(),
              behavior: SnackBarBehavior.floating,
              content: Text(
                locals.pressAgain,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              duration: const Duration(seconds: 2),
            ),
          );
          return;
        } else {
          SystemNavigator.pop();
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: PageView(
          controller: controller,
          physics: const NeverScrollableScrollPhysics(),
          children: fractions,
          onPageChanged: (e) {
            _onPageChanged(context, e);
          },
        ),
        bottomNavigationBar: BottomNavBar(
          controller: controller,
        ),
      ),
    );
  }

  setStatee() => setState(() => {});
}

class NoInternetDialog extends StatelessWidget {
  const NoInternetDialog({super.key, required this.shx});

  final BuildContext shx;

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);
    return AlertDialog(
      insetPadding: const EdgeInsets.all(AppSizes.pix4),
      title: Row(
        children: [
          const Icon(Icons.info_outline),
          Text(" ${locals.noInternet}"),
        ],
      ),
      content: Text(locals.checkYourInternetRetry),
      actions: <Widget>[
        DialogActions(
          locals: locals,
          onDeny: () {
            SystemNavigator.pop();
          },
          onSubmit: () {
            Navigator.of(shx).pop();
            Future.delayed(const Duration(milliseconds: 300), () async {
              await Net.checkInternet().then((value) {
                if (!value) {
                  showDialog(
                    barrierDismissible: false,
                    context: shx,
                    builder: (ct) => NoInternetDialog(shx: shx),
                  );
                }
                shx.read<CategsCubit>().fetchCategsorites();
                shx.read<HouseCubit>().getAllHouses();
                return value;
              });
            });
          },
          applyText: locals.retry,
        ),
      ],
    );
  }
}
