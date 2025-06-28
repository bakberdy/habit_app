import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:habit_app/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider with ChangeNotifier {
  late Locale _locale;
  final SharedPreferences sharedPreferences;

  Locale get locale => _locale;

  static const _key = 'locale';

  LocaleProvider(Locale? systemLocale, this.sharedPreferences) {
    final savedCode = sharedPreferences.getString(_key);
    if (savedCode != null) {
      _locale = AppLocalizations.supportedLocales.firstWhere(
        (l) => l.languageCode == savedCode,
        orElse: () => AppLocalizations.english,
      );
    } else {
      _locale = AppLocalizations.supportedLocales.contains(systemLocale)
          ? systemLocale!
          : AppLocalizations.english;
    }
  }

  void setLocale(Locale locale) {
    if (!AppLocalizations.supportedLocales.contains(locale)) return;
    _locale = locale;
    sharedPreferences.setString(_key, locale.languageCode); // сохраняем локаль
    notifyListeners();
  }
}
