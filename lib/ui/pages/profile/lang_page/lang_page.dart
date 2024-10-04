// ignore_for_file: deprecated_member_use

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '/config/config.dart';
import '/logic/cubits/lang/lang_cubit.dart';
import '../../../../localization/locals.dart';
import '../../../../logic/cubits/categs/categs_cubit.dart';
import '../../../../logic/repos/i_main_repo.dart';
import '../../../style/app_sizes.dart';
import '../../../style/style.dart';
import '../../../widgets/top_bar.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  bool isSelected(Locale locale, IMainRepo repo) {
    Future<SharedPreferences> pref = SharedPreferences.getInstance();
    return Locale(pref.then((value) => value.getString(repo.langCode) ?? 'tk').toString(), '') == locale;
  }

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: TopBar(title: locals.language),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: BlocBuilder<LangCubit, Locale>(
          builder: (context, state) {
            var repo = context.read<CategsCubit>().repo;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSizes.pix10),
                RadioListTile<Locale>(
                  splashRadius: 50,
                  fillColor: MaterialStateColor.resolveWith(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.selected)) {
                        return AppColors.statusBar;
                      }
                      return AppColors.statusBar;
                    },
                  ),
                  activeColor: Colors.red,
                  title: Tex('🇹🇲  Türkmençe', con: context).title,
                  tileColor: AppColors.secondaryText.withOpacity(.3),
                  shape: RoundedRectangleBorder(borderRadius: borderAll),
                  groupValue: state,
                  selected: isSelected(const Locale('tk', ''), repo) ? true : false,
                  onChanged: (value) {
                    context.read<LangCubit>().changeLanguage(value!);
                    successToast('Türkmen diline geçirildi');
                  },
                  value: const Locale('tk', ''),
                ),
                const SizedBox(height: 15),
                RadioListTile<Locale>(
                  splashRadius: 50,
                  fillColor: MaterialStateColor.resolveWith(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.selected)) {
                        return AppColors.statusBar;
                      }
                      return AppColors.statusBar;
                    },
                  ),
                  tileColor: AppColors.secondaryText.withOpacity(.3),
                  shape: RoundedRectangleBorder(borderRadius: borderAll),
                  groupValue: state,
                  onChanged: (value) {
                    context.read<LangCubit>().changeLanguage(value!);
                    successToast('Язык изменено 🇷🇺  Русский');
                  },
                  selected: isSelected(const Locale('ru', ''), repo) ? true : false,
                  value: const Locale('ru', ''),
                  title: Tex('🇷🇺  Русский', con: context).title,
                ),
                const SizedBox(height: 15),
                RadioListTile<Locale>(
                  splashRadius: 50,
                  fillColor: MaterialStateColor.resolveWith(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.selected)) {
                        return AppColors.statusBar;
                      }
                      return AppColors.statusBar;
                    },
                  ),
                  tileColor: AppColors.secondaryText.withOpacity(.3),
                  shape: RoundedRectangleBorder(borderRadius: borderAll),
                  groupValue: state,
                  onChanged: (value) {
                    context.read<LangCubit>().changeLanguage(value!);
                    successToast('Changed to 🇬🇧  English');
                  },
                  selected: isSelected(const Locale('en', ''), repo) ? true : false,
                  value: const Locale('en', ''),
                  title: Tex('🇬🇧  English', con: context).title,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
