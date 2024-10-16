import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mekanly_com/config/config.dart';
import 'package:mekanly_com/ui/style/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum AppTheme { light, dark }

class AppThemeState {
  final ThemeData themeData;

  AppThemeState(this.themeData);
}

class ThemeCubit extends Cubit<AppThemeState> {
  ThemeCubit() : super(AppThemeState(_lightTheme));
  static const fontt = TextStyle(fontFamily: robotoRegular, color: Colors.black);
  static const style = TextTheme(
    bodyLarge: fontt,
    bodySmall: fontt,
    bodyMedium: fontt,
    displayLarge: fontt,
    headlineLarge: fontt,
    displayMedium: fontt,
    headlineMedium: fontt,
    displaySmall: fontt,
    headlineSmall: fontt,
    titleMedium: fontt,
    titleSmall: fontt,
    titleLarge: fontt,
  );

  static final ThemeData _lightTheme = ThemeData.light(useMaterial3: true).copyWith(
    radioTheme: RadioThemeData(fillColor: toMtrlStColor(AppColors.statusBar)),
    progressIndicatorTheme: const ProgressIndicatorThemeData(color: AppColors.primary),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: AppColors.secondaryText.withOpacity(.7)),
      labelStyle: TextStyle(color: AppColors.statusBar.withOpacity(.9)),
      floatingLabelStyle: const TextStyle(color: AppColors.buttons),
      alignLabelWithHint: true,
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: AppColors.white,
      surfaceTintColor: AppColors.white,
    ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
      ),
      elevation: 0,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: Colors.transparent,
      cursorColor: AppColors.mainTextDark,
    ),
    actionIconTheme: ActionIconThemeData(
      backButtonIconBuilder: (BuildContext context) => const Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
    ),
    textTheme: style,
  );

  Future<void> initializeTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final themeIndex = prefs.getInt('theme') ?? 0;
    final theme = AppTheme.values[themeIndex];
    emit(AppThemeState(theme == AppTheme.light ? _lightTheme : _lightTheme));
  }

  Future<void> toggleTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final currentState = state;
    final newTheme = currentState.themeData.brightness == Brightness.light ? _lightTheme : _lightTheme;
    await prefs.setInt('theme', newTheme == _lightTheme ? 0 : 1);
    emit(AppThemeState(newTheme));
  }
}
