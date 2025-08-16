import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../l10n/app_localizations.dart';
import 'tk_intl.dart';

/// An abstract singleton class that holds [delegates] and returns [AppLocalizations] from [translation] method.
abstract class LocalizationService {
  static AppLocalizations? _testLocalizations;

  // ignore: strict_raw_type
  static const delegates = <LocalizationsDelegate>[
    AppLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    TkMaterialLocalizations.delegate,
    CupertinoLocalizationTk.delegate,
  ];

  static const supportedLocales = [
    ruLocale,
    tkLocale,
    Locale('tk'),
  ];

  static const Locale fallbackLocale = Locale(ruLocaleCode);

  static const tkLocaleCode = 'tk';

  static const ruLocaleCode = 'ru';

  static const tkLocale = Locale(tkLocaleCode);
  static const ruLocale = Locale(ruLocaleCode);

  @visibleForTesting
  static Future<void> setTestLocalizations(Locale locale) async {
    _testLocalizations = await AppLocalizations.delegate.load(locale);
  }

  /// Must be called only under the context of [MaterialApp], [CupertinoApp]
  static AppLocalizations? translation(BuildContext context) =>
      _testLocalizations ?? AppLocalizations.of(context);
}
