import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../product/local/config_preference.dart';
import '../../utils/extensions.dart';
part 'app_cubit.freezed.dart';
part 'app_state.dart';

@injectable
class AppCubit extends Cubit<AppState> {
  // FIX: Remove init() from the constructor.
  AppCubit() : super(const AppState());

  Future<void> init() async {
    // This logic is fine, it just needs to be called at the right time.
    final currentLang = ConfigPreference.loadLangCode();
    final current = AppState(locale: currentLang.getLocale);
    emit(current);
  }

  Future<void> onResetApp() async {
    // _appRouterConfig.goRouter.goNamed(LauncherView.routeName);
    emit(state.copyWith(key: UniqueKey()));
  }

  void changeLang(Locale locale) {
    ConfigPreference.setLangCode(locale.languageCode);
    emit(
      state.copyWith(
        locale: locale,
      ),
    );
  }
}
