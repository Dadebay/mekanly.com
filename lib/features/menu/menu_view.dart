import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import '../../app/cubit/app_cubit.dart';
import '../../core/components/app_text.dart';
import '../../localization/extensions.dart';
import '../../product/constants/constants.dart';
import '../../utils/api_provider.dart' show ApiProvider;
import '../../utils/extensions.dart';
import '../auth/cubit/auth_cubit.dart';
import '../comments/comments_view.dart';
import '../contact_us/contact_us_view.dart';
import '../content/content_view.dart';
import '../root/cubit/navigation_cubit.dart';
import 'duzgunname_view.dart';
import 'widgets/profile_main_tile.dart';
import 'widgets/user_business_profile_tile.dart';
import 'widgets/user_profile_tile.dart';
import 'widgets/web_view_screen.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  static const routePath = '/menu-view';
  static const routeName = 'menu-view';

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  late final AppCubit appCubit;

  @override
  void initState() {
    super.initState();
    appCubit = context.read<AppCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, authState) {
        return BlocBuilder<AppCubit, AppState>(
          buildWhen: (previous, current) => previous.locale != current.locale,
          builder: (context, appState) {
            return SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 18).w,
                child: Column(
                  children: [
                    const UserProfileTile(),
                    4.boxH,
                    UserBusinessProfileTile(
                      onTap: () {},
                    ),
                    ProfileMainTile(
                      title: context.translation.add_house,
                      isAuthNeeded: true,
                      icon: Assets.icons.icAddHouse.svg(
                        package: 'gen',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          // ignore: inference_failure_on_instance_creation
                          MaterialPageRoute(
                            builder: ContentView.builder,
                          ),
                        );
                      },
                    ),
                    ProfileMainTile(
                      title: context.translation.language,
                      isAuthNeeded: false,
                      icon: Assets.icons.icLang.svg(
                        package: 'gen',
                        // ignore: deprecated_member_use
                        color: const Color.fromARGB(255, 34, 34, 34),
                      ),
                      onTap: () {
                        _chooseLang(context);
                      },
                      trailingWidget: BlocBuilder<AppCubit, AppState>(
                        builder: (context, state) {
                          final currentLang = state.locale?.languageCode ?? 'ru';
                          return Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AppText.s14w400BdM(
                                currentLang == 'ru' ? 'Rus dili' : 'Türkmen dili',
                                fontWeight: FontWeight.w400,
                                fontFamily: StringConstants.manrope,
                                color: const Color.fromARGB(255, 106, 106, 106),
                              ),
                              8.boxW,
                              Icon(
                                Icons.chevron_right,
                                size: 20.w,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    ProfileMainTile(
                      isAuthNeeded: true,
                      title: context.translation.favorites,
                      icon: Assets.icons.icFavoriteNew.svg(
                        package: 'gen',
                        // ignore: deprecated_member_use
                        color: const Color.fromARGB(255, 34, 34, 34),
                      ),
                      onTap: () {
                        context.read<NavigationCubit>().changeTab(3);
                      },
                    ),
                    ProfileMainTile(
                      isAuthNeeded: true,
                      title: context.translation.comments,
                      icon: Assets.icons.icChat.svg(
                        package: 'gen',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          // ignore: inference_failure_on_instance_creation
                          MaterialPageRoute(
                            builder: (context) => const CommentsView(),
                          ),
                        );
                      },
                    ),
                    ProfileMainTile(
                      isAuthNeeded: false,
                      title: context.translation.rules,
                      icon: Assets.icons.icPrivacy.svg(
                        package: 'gen',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          // ignore: inference_failure_on_instance_creation
                          MaterialPageRoute(
                            builder: (context) => const DuzgunnameView(),
                          ),
                        );
                      },
                    ),
                    ProfileMainTile(
                      isAuthNeeded: true,
                      title: context.translation.contact,
                      icon: Assets.icons.icContactUs.svg(
                        package: 'gen',
                        // ignore: deprecated_member_use
                        color: const Color.fromARGB(255, 34, 34, 34),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          // ignore: inference_failure_on_instance_creation
                          MaterialPageRoute(
                            builder: (context) => const ContactUsView(),
                          ),
                        );
                      },
                    ),
                    ProfileMainTile(
                      isAuthNeeded: false,
                      title: context.translation.about_us,
                      icon: Assets.icons.icHelp.svg(
                        package: 'gen',
                        // ignore: deprecated_member_use
                        color: const Color.fromARGB(255, 34, 34, 34),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          // ignore: inference_failure_on_instance_creation
                          MaterialPageRoute(
                            builder: (context) => WebViewScreen(
                              url: '${ApiProvider().baseUrl}/aboutus/${Localizations.localeOf(context).languageCode}',
                              title: context.translation.about_us,
                            ),
                          ),
                        );
                      },
                    ),
                    ProfileMainTile(
                      isLogOut: true,
                      isAuthNeeded: true,
                      title: context.translation.log_out,
                      icon: Assets.icons.icLogOut.svg(
                        package: 'gen',
                        // ignore: deprecated_member_use
                        color: const Color.fromARGB(255, 34, 34, 34),
                      ),
                      onTap: () {
                        // ignore: inference_failure_on_function_invocation
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              alignment: Alignment.center,
                              backgroundColor: Colors.white,
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: MediaQuery.of(context).size.height * 0.25,
                                  maxWidth: MediaQuery.of(context).size.width * 0.96,
                                ),
                                child: Container(
                                  padding: const EdgeInsets.fromLTRB(25, 15, 5, 15),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFFFFFFF),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: AppText.s14w400BdM(
                                          context.translation.log_out,
                                          fontSize: 14.sp,
                                          fontFamily: StringConstants.roboto,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xFF252525),
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      AppText.s14w400BdM(
                                        context.translation.log_out_confirm,
                                        fontSize: 13.sp,
                                        fontFamily: StringConstants.roboto,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xFF252525),
                                      ),
                                      const SizedBox(height: 16),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: AppText.s14w400BdM(
                                              context.translation.no,
                                              fontSize: 13.sp,
                                              fontFamily: StringConstants.roboto,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.lightBlue,
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () async {
                                              Navigator.of(context).pop();
                                              await context.read<AuthCubit>().logOut();
                                              // ignore: use_build_context_synchronously
                                              await context.read<AuthCubit>().checkState();
                                            },
                                            child: AppText.s14w400BdM(
                                              context.translation.yes,
                                              fontSize: 13.sp,
                                              fontFamily: StringConstants.roboto,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.lightBlue,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
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

  Future<void> _chooseLang(BuildContext outherContext) async {
    final appCubit = context.read<AppCubit>();
    var selectedLang = appCubit.state.locale?.languageCode ?? 'ru';

    // ignore: inference_failure_on_function_invocation
    await showDialog(
        context: outherContext,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (context, setState) {
              return Dialog(
                alignment: Alignment.center,
                backgroundColor: Colors.white,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.25,
                    maxWidth: MediaQuery.of(context).size.width * 0.96,
                  ),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(25, 15, 5, 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFFFFFFF),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: AppText.s14w400BdM(
                            context.translation.select_language,
                            fontSize: 14.sp,
                            fontFamily: StringConstants.roboto,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF252525),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            RadioListTile<String>(
                              dense: true,
                              visualDensity: VisualDensity.compact,
                              autofocus: selectedLang == 'tk',
                              activeColor: Colors.lightBlue,
                              controlAffinity: ListTileControlAffinity.trailing,
                              value: 'tk',
                              groupValue: selectedLang,
                              contentPadding: EdgeInsets.zero,
                              onChanged: (value) {
                                if (value == null) return;
                                setState(() {
                                  selectedLang = value;
                                });
                                appCubit.changeLang(Locale(value));

                                Navigator.of(context).pop();
                                outherContext.read<NavigationCubit>().changeTab(0);
                              },
                              title: AppText.s14w400BdM(
                                'Türkmen dili',
                                color: const Color(0xFF252525),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: StringConstants.roboto,
                              ),
                            ),
                            RadioListTile<String>(
                              dense: true,
                              visualDensity: VisualDensity.compact,
                              autofocus: selectedLang == 'ru',
                              activeColor: Colors.lightBlue,
                              value: 'ru',
                              groupValue: selectedLang,
                              contentPadding: EdgeInsets.zero,
                              controlAffinity: ListTileControlAffinity.trailing,
                              onChanged: (value) {
                                if (value == null) return;
                                setState(() {
                                  selectedLang = value;
                                });
                                appCubit.changeLang(Locale(value));

                                Navigator.of(context).pop();
                                outherContext.read<NavigationCubit>().changeTab(0);
                              },
                              title: AppText.s14w400BdM(
                                'Rus dili',
                                color: const Color(0xFF252525),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: StringConstants.roboto,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        });
  }
}
