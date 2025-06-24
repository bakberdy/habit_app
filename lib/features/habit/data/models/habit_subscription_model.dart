import 'package:habit_app/features/habit/data/models/habit_model.dart';
import 'package:habit_app/features/habit/domain/entities/habit_subscription.dart';

class HabitSubscriptionModel extends HabitSubscription {
  const HabitSubscriptionModel(
      {required super.id,
      required super.habit,
      required super.subscriptionDate});

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
