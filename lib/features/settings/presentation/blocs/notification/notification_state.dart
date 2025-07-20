part of 'notification_bloc.dart';

@freezed
sealed class NotificationState with _$NotificationState {
  const factory NotificationState({
    required bool pushEnabled,
    required bool dailyEnabled,
    required bool isLoading,
  }) = _NotificationState;

  factory NotificationState.initial() => const NotificationState(
        pushEnabled: false,
        dailyEnabled: false,
        isLoading: true,
      );
}
