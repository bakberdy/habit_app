part of 'catalog_bloc.dart';

@freezed
sealed class CatalogEvent with _$CatalogEvent {
  const factory CatalogEvent.loadCategories({required Locale locale}) =
      _GetCategories;
  const factory CatalogEvent.loadCategory(
      {required int categoryId, required Locale locale}) = _LoadCategory;
  const factory CatalogEvent.loadHabit(
      {required int habitId, required Locale locale}) = _LoadHabit;
}
