part of 'catalog_bloc.dart';

@freezed
class CatalogEvent with _$CatalogEvent {
  const factory CatalogEvent.loadCategories() = _GetCategories;
  const factory CatalogEvent.loadCategory({required int categoryId}) =
      _LoadCategory;
  const factory CatalogEvent.loadHabit({required int habitId}) = _LoadHabit;
}
