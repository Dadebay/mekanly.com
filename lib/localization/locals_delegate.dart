import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'locals.dart';

class LocalsDelegate extends LocalizationsDelegate<Locals> {
  const LocalsDelegate();

  @override
  bool isSupported(Locale locale) => Locals.languages().contains(locale.languageCode);

  @override
  Future<Locals> load(Locale locale) {
    return SynchronousFuture<Locals>(Locals(locale));
  }

  @override
  bool shouldReload(LocalsDelegate old) => false;
}
