import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../remote/entities/user.dart';
import '../constants/constants.dart';

class ConfigPreference {
  ConfigPreference._(this._pref);
  static late ConfigPreference _instance;

  static void init(SharedPreferences pref) {
    _instance = ConfigPreference._(pref);
  }

  final SharedPreferences _pref;

  static Future<void> reloadShared() async {
    await _instance._pref.reload();
  }

  static Future<bool> clear() async {
    return _instance._pref.clear();
  }

  static String loadLangCode() {
    return _instance._pref.getString(SharedPrefKeys.languageCode) ??
        SharedPrefKeys.defaultCode;
  }

  static Future<bool> setLangCode(String code) {
    return _instance._pref.setString(SharedPrefKeys.languageCode, code);
  }

  static Future<bool> setThemeMode(String code) {
    return _instance._pref.setString(SharedPrefKeys.themeMode, code);
  }

  static User? getUser() {
    final data = _instance._pref.getString(SharedPrefKeys.credentials);
    final user = data != null
        ? User.fromJson(jsonDecode(data) as Map<String, dynamic>)
        : null;
    return user;
  }

  static Future<bool> setCredentials(User credentials) {
    return _instance._pref.setString(
      SharedPrefKeys.credentials,
      json.encode(credentials.toJson()),
    );
  }

  static Future<bool> removeCredentials() {
    return _instance._pref.remove(SharedPrefKeys.credentials);
  }
}
