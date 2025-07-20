part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  factory NotificationEvent.setDailyEnabled(bool enabled) = _SetDailyEnabled;
  factory NotificationEvent.setPushEnabled(bool enabled) = _SetPushEnabled;
  factory NotificationEvent.loadSettings() = _LoadSettings;
}
