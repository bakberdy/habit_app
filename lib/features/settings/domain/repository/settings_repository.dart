import 'dart:ui';

import 'package:habit_app/core/utils/typedef.dart';

abstract class SettingsRepository {
  ResultVoid setLocale(Locale locale);
}
