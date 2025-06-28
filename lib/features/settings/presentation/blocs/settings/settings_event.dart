part of 'settings_bloc.dart';

@freezed
sealed class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.setLocale({required Locale locale}) = _SetLocale;
}
