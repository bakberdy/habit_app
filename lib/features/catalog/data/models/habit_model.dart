import 'package:habit_app/core/shared/enums/weekday.dart';
import 'package:habit_app/features/catalog/data/models/tip_model.dart';
import 'package:habit_app/features/catalog/domain/entities/habit_entity.dart';

class HabitModel extends HabitEntity {
  const HabitModel(
      {required super.id,
      required super.takesTime,
      required super.title,
      required super.description,
      required super.why,
      required List<TipModel> tips,
      required super.days})
      : super(tips: tips);

  factory HabitModel.fromJson(Map<String, dynamic> json) {
    return HabitModel(
      id: json['id'] as int,
      takesTime: json['takesTime'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      why: json['why'] as String,
      tips: (json['tips'] as List<Map<String, dynamic>>)
          .map((e) => TipModel.fromJson(e))
          .toList(),
      days: (json['days'] as List<String>)
          .map((e) => Weekday.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'takesTime': takesTime,
      'title': title,
      'description': description,
      'why': why,
      'tips': tips?.map((e) => (e as TipModel).toJson()).toList(),
      'days': days.map((e) => e.value).toList(),
    };
  }
}
