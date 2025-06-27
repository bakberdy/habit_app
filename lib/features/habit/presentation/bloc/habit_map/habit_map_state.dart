part of 'habit_map_bloc.dart';

@freezed
class HabitMapState with _$HabitMapState {
  const factory HabitMapState.loading() = HabitMapLoading;
  const factory HabitMapState.loaded({required Map<DateTime, int> dateset}) =
      HabitMapLoaded;
}
