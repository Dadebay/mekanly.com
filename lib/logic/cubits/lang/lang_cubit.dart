import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../config/config.dart';
import '../../repos/i_main_repo.dart';

class LangCubit extends Cubit<Locale> {
  final SharedPreferences _prefs;
  IMainRepo repo;

  LangCubit(this._prefs, this.repo)
      : super(Locale(
          _prefs.getString(repo.langCode) ?? 'tk',
          _prefs.getString(repo.cntryCode) ?? '',
        ));
  void changeLanguage(Locale locale) {
    _prefs.setString(repo.langCode, locale.languageCode);
    _prefs.setString(repo.cntryCode, locale.countryCode!);
    emit(locale);
  }

  String localize(Locale locale) {
    if (locale == const Locale('tk', '')) {
      return 'tk_TK';
    } else if (locale == const Locale('ru', '')) {
      return 'ru_RU';
    } else {
      return 'en_US';
    }
  }
}
