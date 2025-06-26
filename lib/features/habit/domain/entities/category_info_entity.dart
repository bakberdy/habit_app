import 'package:habit_app/features/habit/domain/entities/category_entity.dart';
import 'package:habit_app/features/habit/domain/entities/habit_entity.dart';

class CategoryInfoEntity {
  final CategoryEntity category;
  final List<HabitEntity> habits;

  CategoryInfoEntity({required this.category, required this.habits});
}
