import 'package:flutter_bloc/flutter_bloc.dart';

import '../../style/colors.dart';
import '/config/config.dart';
import '/localization/locals.dart';
import '/logic/cubits/cubits.dart';
import '/ui/pages/profile/lang_page/lang_page.dart';
import '/ui/style/app_sizes.dart';
import '/ui/style/text_styles.dart';
import '/ui/widgets/widgets.dart';
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

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: TopBar(
        title: locals.profil,
        color: AppColors.secondaryTextDark,
        leading: Container(),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const SizedBox(height: AppSizes.pix10),
          const Mekanly(),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSizes.pix16),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    shape: Border.symmetric(horizontal: BorderSide(color: AppColors.secondaryText.withOpacity(.5), width: 2)),
                    dense: true,
                    title: Tex(state.user?.username, con: context).title,
                    subtitle: Tex(locals.username, con: context).subtitle,
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return SettingsTile(
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
                ),
              ] else ...[
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemExtent: 50,
                  itemBuilder: (context, index) {
                    return SettingsTile(
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
    required this.title,
    required this.onTap,
  });

  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSizes.pix4),
      child: ListTile(
        dense: true,
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: AppSizes.pix16),
        shape: RoundedRectangleBorder(borderRadius: borderAll),
        minLeadingWidth: AppSizes.pix10,
        title: Tex(
          title,
          padding: 1.5,
          con: context,
          col: AppColors.mainTextDark,
        ).title,
        trailing: title == Locals.of(context).logout ? const Icon(Icons.arrow_forward_ios_rounded) : null,
      ),
    );
  }
}
