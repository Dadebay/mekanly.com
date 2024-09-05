import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';

import '/config/config.dart';
import '/localization/locals.dart';
import '/logic/cubits/cubits.dart';
import '/ui/pages/profile/lang_page/lang_page.dart';
import '/ui/style/app_sizes.dart';
import '/ui/style/text_styles.dart';
import '/ui/widgets/widgets.dart';
import '../../style/colors.dart';
import 'auth/login_page.dart';
import 'auth/logout_dialog.dart';
import 'contact_me.dart';
import 'my_comments/my_comments.dart';
import 'my_favs/my_favs.dart';
import 'my_houses/my_houses.dart';
import 'terms_and_conditions.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var state = context.watch<AuthCubit>().state;
    var locals = Locals.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            const SizedBox(height: AppSizes.pix10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Image.asset(
                    'assets/images/mekanly.png',
                    height: 35,
                    alignment: Alignment.centerLeft,
                  )),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      IconlyLight.notification,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSizes.pix10),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (state is AuthLoading) ...[
                  const SizedBox(height: AppSizes.pix250),
                  const Loading(),
                  const SizedBox(height: AppSizes.pix250),
                ],
                if (state is AuthSuccess) ...[
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 15, left: 8),
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                            child: const Icon(
                              IconlyBold.profile,
                              size: AppSizes.pix40,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              dense: true,
                              title: Tex(state.user?.username, con: context).title,
                              subtitle: Tex(locals.username, con: context).subtitle,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: borderAll15,
                      color: Colors.white,
                      boxShadow: [BoxShadow(color: Colors.grey.shade200, spreadRadius: 3, blurRadius: 3)],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: Column(
                              children: [
                                Text(
                                  locals.kat9,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(color: Colors.black, fontFamily: robotoSemiBold, fontSize: AppSizes.pix16 + 2),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  locals.kat10,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 4,
                                  style: const TextStyle(color: Colors.black, fontFamily: robotoRegular, fontSize: AppSizes.pix12 + 2),
                                ),
                              ],
                            )),
                        Expanded(
                            flex: 3,
                            child: Image.asset(
                              'assets/icons/Vector_2.png',
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
                  ),
                  divider(),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      List icons = [Icons.language, IconlyLight.home, IconlyLight.chat, IconlyLight.heart, IconlyLight.document, IconlyLight.message, IconlyLight.logout];

                      return SettingsTile(
                        icon: icons[index],
                        title: getProfileTitles(index, context),
                        onTap: () {
                          if (index != 6) {
                            go(context, getRoutes(getProfileTitles(index, context), context));
                          } else {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const LogoutDialog();
                              },
                            );
                          }
                        },
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return divider();
                    },
                  ),
                ] else ...[
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemExtent: 50,
                    itemBuilder: (context, index) {
                      List icons = [Icons.language, IconlyLight.heart, IconlyLight.chat, IconlyLight.message, IconlyLight.document, IconlyLight.info_circle, IconlyLight.logout];

                      return SettingsTile(
                        icon: icons[index],
                        title: getTitles(index, context),
                        onTap: () {
                          go(context, getRoutes(getTitles(index, context), context));
                        },
                      );
                    },
                  ),
                ],
              ],
            ),
            const SizedBox(height: AppSizes.pix130),
            if (state is! AuthSuccess)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 68.0),
                child: SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ActionButton(
                    size: 17,
                    radius: 5,
                    onTap: () => go(context, const LoginPage()),
                    label: locals.login,
                  ),
                ),
              ),
          ]),
        ),
      ),
    );
  }

  Padding divider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Divider(
        color: AppColors.black.withOpacity(0.15),
      ),
    );
  }

  String getProfileTitles(int i, BuildContext context) {
    var locals = Locals.of(context);

    switch (i) {
      case 0:
        return locals.language;
      case 3:
        return locals.myFavs;
      case 4:
        return locals.terms;
      case 5:
        return locals.contactMe;
      case 6:
        return locals.logout;
      case 1:
        return locals.myPosts;
      case 2:
        return locals.myComments;
      default:
        return '';
    }
  }

  String getTitles(int i, BuildContext context) {
    var locals = Locals.of(context);

    switch (i) {
      case 0:
        return locals.language;
      case 1:
        return locals.myFavs;
      case 2:
        return locals.terms;
      case 3:
        return locals.contactMe;
      case 4:
        return locals.terms;
      case 5:
        return locals.contactMe;
      default:
        return '';
    }
  }

  Widget getRoutes(String s, BuildContext context) {
    var locals = Locals.of(context);

    if (s == locals.language) {
      return const LanguagePage();
    } else if (s == locals.myPosts) {
      return const MyHouses();
    } else if (s == locals.myFavs) {
      return const MyFavs();
    } else if (s == locals.myComments) {
      return const MyComments();
    } else if (s == locals.contactMe) {
      return ContactMe();
    } else if (s == locals.terms) {
      return const TermsAndConditions();
    } else {
      return Container();
    }
  }
}

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      dense: true,
      onTap: onTap,
      hoverColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(vertical: AppSizes.pix4, horizontal: AppSizes.pix16),
      minLeadingWidth: AppSizes.pix10,
      title: Tex(
        title,
        padding: 1.5,
        con: context,
        col: AppColors.mainTextDark,
      ).title,
      trailing: const Icon(IconlyLight.arrow_right_circle),
    );
  }
}
