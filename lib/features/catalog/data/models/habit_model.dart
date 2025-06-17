import 'package:habit_app/features/catalog/domain/entities/habit_entity.dart';
import 'package:habit_app/features/catalog/domain/entities/tip_entity.dart';

class HabitModel extends HabitEntity {
  const HabitModel(
      {required super.id,
      required super.takesTime,
      required super.title,
      required super.description,
      required super.why,
      required super.tips,
      required super.days});

  factory HabitModel.fromJson(Map<String, dynamic> json) {
    return HabitModel(
      id: json['id'] as int,
      takesTime: json['takesTime'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      why: json['why'] as String,
      tips: json['tips'] as List<TipEntity>,
      days: [],
    );
  }
}
