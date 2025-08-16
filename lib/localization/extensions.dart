import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import 'localization_service.dart';

extension LocalizationTranslationExtension on BuildContext {
  AppLocalizations get translation {
    final trnsl = LocalizationService.translation(this);
    if (trnsl == null) {
      throw Exception('Unkown Localization');
    }
    return trnsl;
  }

  MaterialLocalizations get materialTranslation =>
      MaterialLocalizations.of(this);
}
