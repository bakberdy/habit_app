part of 'catalog_bloc.dart';

@freezed
class CatalogState with _$CatalogState {
  const factory CatalogState.initial() = CatalogInitial;
  const factory CatalogState.error(String message) = CatalogError;
  const factory CatalogState.loaded({
    required List<CategoryEntity> categories,
  }) = CatalogLoaded;

  const factory CatalogState.categoryLoaded({
    required List<HabitEntity> habits,
    required CategoryEntity category,
  }) = CategoryLoaded;

  const factory CatalogState.habitLoaded({
    required HabitEntity habit,
    required bool isSubscribed,
  }) = HabitLoaded;
}
