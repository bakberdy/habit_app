part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = SearchInitial;
  const factory SearchState.error() = SearchError;
  const factory SearchState.searching(
      {required String query, required List<HabitEntity> habits}) = Searching;
}
