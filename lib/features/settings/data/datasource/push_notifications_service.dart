import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

@lazySingleton
class PushNotificationsService {
  PushNotificationsService(
      this.talker, this._localNotifications, this._firebaseMessaging);

  final FirebaseMessaging _firebaseMessaging;
  final FlutterLocalNotificationsPlugin _localNotifications;
  final Talker talker;

  Future<void> init() async {
    final settings = await _firebaseMessaging.requestPermission();

    if (settings.authorizationStatus != AuthorizationStatus.authorized) {
      talker.warning('Уведомления не разрешены пользователем');
      return;
    }

    if (defaultTargetPlatform == TargetPlatform.iOS) {
      String? apnsToken;
      do {
        apnsToken = await _firebaseMessaging.getAPNSToken();
        await Future.delayed(const Duration(milliseconds: 200));
      } while (apnsToken == null);
      talker.info('APNs Token: $apnsToken');
    }

    final token = await _firebaseMessaging.getToken();
    talker.info('FCM Token: $token');

    const androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );
    const initSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );
    await _localNotifications.initialize(initSettings);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      _showLocalNotification(message);
    });

    // 🔥 Подписка на топик
    await _firebaseMessaging.subscribeToTopic('all');
    talker.info('Подписан на топик "all"');
  }

  void _showLocalNotification(RemoteMessage message) {
    final notification = message.notification;
    if (notification == null) return;

    _localNotifications.show(
      notification.hashCode,
      notification.title,
      notification.body,
      const NotificationDetails(
        iOS: DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
        ),
        android: AndroidNotificationDetails(
            'push_channel', 'Push Notifications',
            importance: Importance.max,
            priority: Priority.high,
            playSound: true),
      ),
    );
  }

  Future<void> subscribeToTopic(String topic) async {
    await _firebaseMessaging.subscribeToTopic(topic);
  }

  Future<void> unsubscribeFromTopic(String topic) async {
    await _firebaseMessaging.unsubscribeFromTopic(topic);
  }
}
