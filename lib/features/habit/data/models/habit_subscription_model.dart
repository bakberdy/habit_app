import 'package:habit_app/features/habit/data/models/habit_model.dart';
import 'package:habit_app/features/habit/domain/entities/habit_subscription.dart';

class HabitSubscriptionModel extends HabitSubscriptionEntity {
  const HabitSubscriptionModel(
      {required super.id,
      required HabitModel habit,
      required super.subscriptionDate})
      : super(habit: habit);

  factory HabitSubscriptionModel.fromJson(Map<String, dynamic> json) {
    return HabitSubscriptionModel(
      id: json['id'] as int,
      habit: HabitModel.fromJson(json['habit'] as Map<String, dynamic>),
      subscriptionDate: DateTime.parse(json['subscriptionDate'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'habit': habit,
      'subscriptionDate': subscriptionDate.toIso8601String(),
    };
  }
}
