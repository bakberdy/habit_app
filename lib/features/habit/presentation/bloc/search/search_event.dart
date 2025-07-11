part of 'search_bloc.dart';

@freezed
sealed class SearchEvent with _$SearchEvent {
  const factory SearchEvent.search(
      {required String query,
      int? categoryId,
      required Locale locale}) = _SearchEvent;
  const factory SearchEvent.clear() = _Clear;
}
