import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_app/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleState {
  final Locale? locale;

  LocaleState({required this.locale});
}

class LocaleCubit extends Cubit<LocaleState> {
  final SharedPreferences _sharedPreferences;
  LocaleCubit(this._sharedPreferences) : super(LocaleState(locale: null)) {
    final savedCode = _sharedPreferences.getString(_key);
    if (savedCode != null) {
      emit(LocaleState(
          locale: AppLocalizations.supportedLocales.firstWhere(
        (l) => l.languageCode == savedCode,
        orElse: () => AppLocalizations.english,
      )));
    } else {
      emit(LocaleState(locale: AppLocalizations.english));
    }
  }

  void setLocale(Locale locale) {
    if (!AppLocalizations.supportedLocales.contains(locale)) return;
    emit(LocaleState(locale: locale));
    _sharedPreferences.setString(_key, locale.languageCode); // сохраняем локаль
  }

  static const _key = 'locale';
}
