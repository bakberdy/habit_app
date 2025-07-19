import 'package:habit_app/core/error/failure.dart';
import 'package:habit_app/core/utils/typedef.dart';
import 'package:habit_app/features/settings/data/datasource/local_notifications_service.dart';
import 'package:habit_app/features/settings/data/datasource/push_notifications_service.dart';
import 'package:habit_app/features/settings/domain/repository/settings_repository.dart';
import 'package:habit_app/injection/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dartz/dartz.dart';
import 'package:talker_flutter/talker_flutter.dart';

@LazySingleton(as: SettingsRepository)
class SettingsRepositoryImpl implements SettingsRepository {
  static const _keyDaily = 'daily_enabled';
  static const _keyPush = 'push_enabled';
  static const _keyLocale = 'locale'; // язык пользователя, если нужно

  final SharedPreferences prefs;
  final LocalNotificationsService localNotificationsService;
  final PushNotificationsService pushNotificationsService;

  SettingsRepositoryImpl({
    required this.prefs,
    required this.localNotificationsService,
    required this.pushNotificationsService,
  });

  @override
  ResultFuture<bool> getDailyEnabled() async {
    try {
      final isSet = prefs.containsKey(_keyDaily);
      if (!isSet) {
        await prefs.setBool(_keyDaily, true);

        final locale = prefs.getString(_keyLocale) ?? 'en';
        await localNotificationsService.scheduleDailyReminder(locale);
        return Right(true);
      }

      final value = prefs.getBool(_keyDaily) ?? true;
      return Right(value);
    } catch (e) {
      return Left(ValueFailure(
          'Ошибка при получении настройки ежедневного уведомления'));
    }
  }

  @override
  ResultVoid setDailyEnabled(bool value) async {
    try {
      await prefs.setBool(_keyDaily, value);
      final locale = prefs.getString(_keyLocale) ?? 'en';

      if (value) {
        await localNotificationsService.scheduleDailyReminder(locale);
      } else {
        sl<Talker>().debug('Daily notifications disabled');
        await localNotificationsService.cancelAll();
      }
      return const Right(null);
    } catch (e) {
      return Left(ValueFailure(
          'Ошибка при обновлении настройки ежедневного уведомления'));
    }
  }

  @override
  ResultFuture<bool> getPushEnabled() async {
    try {
      final value = prefs.getBool(_keyPush) ?? true;
      return Right(value);
    } catch (e) {
      return Left(
          ValueFailure('Ошибка при получении настройки push-уведомлений'));
    }
  }

  @override
  ResultVoid setPushEnabled(bool value) async {
    try {
      await prefs.setBool(_keyPush, value);
      if (value) {
        await pushNotificationsService.subscribeToTopic('general');
      } else {
        await pushNotificationsService.unsubscribeFromTopic('general');
      }
      return const Right(null);
    } catch (e) {
      return Left(
          ValueFailure('Ошибка при обновлении настройки push-уведомлений'));
    }
  }
}
