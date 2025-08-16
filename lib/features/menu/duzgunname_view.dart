import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import '../../app/cubit/app_cubit.dart';
import '../../localization/extensions.dart';
import '../../product/constants/constants.dart';
import '../../utils/api_provider.dart';
import 'widgets/profile_main_tile.dart';
import 'widgets/web_view_screen.dart';

class DuzgunnameView extends StatefulWidget {
  const DuzgunnameView({super.key});

  static const routePath = '/menu-view';
  static const routeName = 'menu-view';

  @override
  State<DuzgunnameView> createState() => _DuzgunnameViewState();
}

class _DuzgunnameViewState extends State<DuzgunnameView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      buildWhen: (previous, current) => previous.locale != current.locale,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: ColorName.main,
            elevation: 4,
            title: Text(
              context.translation.rules,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: StringConstants.roboto,
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 0.5,
              ),
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 18).w,
            child: Column(
              children: [
                ProfileMainTile(
                  isAuthNeeded: true,
                  title: context.translation.privacy_policy,
                  icon: Assets.icons.duzg.svg(package: 'gen'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WebViewScreen(
                          url: '${ApiProvider().baseUrl}/privacypolicy/${Localizations.localeOf(context).languageCode}',
                          title: context.translation.privacy_policy,
                        ),
                      ),
                    );
                  },
                ),
                ProfileMainTile(
                  isAuthNeeded: false,
                  title: context.translation.ul_duz,
                  icon: Assets.icons.duzg.svg(package: 'gen'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WebViewScreen(
                          url: '${ApiProvider().baseUrl}/rules/${Localizations.localeOf(context).languageCode}',
                          title: context.translation.ul_duz,
                        ),
                      ),
                    );
                  },
                ),
                ProfileMainTile(
                  isAuthNeeded: true,
                  title: context.translation.accistant,
                  icon: Assets.icons.duzg.svg(package: 'gen'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WebViewScreen(
                          url: '${ApiProvider().baseUrl}/help/${Localizations.localeOf(context).languageCode}',
                          title: context.translation.accistant,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
