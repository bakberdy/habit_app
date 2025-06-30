part of 'home_bloc.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadData({required Locale locale}) = _LoadData;
  const factory HomeEvent.setUsername(
      {required String username, required Locale locale}) = _SetUsername;
}
