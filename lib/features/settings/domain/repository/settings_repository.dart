import 'package:habit_app/core/core.dart';

abstract class SettingsRepository {
  ResultFuture<bool> getPushEnabled();

  ResultVoid setPushEnabled(bool value);

  ResultFuture<bool> getDailyEnabled();

  ResultVoid setDailyEnabled(bool value);
}
