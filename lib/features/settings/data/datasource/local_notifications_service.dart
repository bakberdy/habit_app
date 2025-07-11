import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart';

@lazySingleton
class LocalNotificationsService {
  final FlutterLocalNotificationsPlugin _notifications;

  LocalNotificationsService(this._notifications);

  Future<void> init(String localeCode) async {
    initializeTimeZones();

    const android = AndroidInitializationSettings('@mipmap/ic_launcher');
    const ios = DarwinInitializationSettings();

    const settings = InitializationSettings(android: android, iOS: ios);
    await _notifications.initialize(settings);
    await scheduleDailyReminder(localeCode);
  }

  /// Показывает уведомление в 08:00 с локализованным текстом
  Future<void> scheduleDailyReminder(String localeCode) async {
    final now = tz.TZDateTime.now(tz.local);
    final scheduledTime = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      8,
      0,
    ).isBefore(now)
        ? tz.TZDateTime(tz.local, now.year, now.month, now.day + 1, 8, 0)
        : tz.TZDateTime(tz.local, now.year, now.month, now.day, 8, 0);

    final localized = _localizedNotification(localeCode);

    await _notifications.zonedSchedule(
      0,
      localized['title'],
      localized['body'],
      scheduledTime,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'daily_channel',
          'Daily Notifications',
          importance: Importance.high,
          priority: Priority.high,
        ),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      matchDateTimeComponents: DateTimeComponents.time,
    );
  }

  Future<void> cancelAll() async {
    await _notifications.cancelAll();
  }

  Map<String, String> _localizedNotification(String locale) {
    switch (locale) {
      case 'kk':
        return {
          'title': 'Күнделікті еске салу',
          'body': 'Бүгінгі күннің әдеттерін орындап бастаңыз 🌱',
        };
      case 'ru':
        return {
          'title': 'Ежедневное напоминание',
          'body': 'Сделайте сегодняшние привычки 🌱',
        };
      default:
        return {
          'title': 'Daily Reminder',
          'body': 'Start your habits for today 🌱',
        };
    }
  }
}
