import 'package:habit_app/features/habit/data/models/habit_model.dart';
import 'package:habit_app/features/habit/domain/entities/habit_subscription.dart';

class HabitSubscriptionModel extends HabitSubscriptionEntity {
  const HabitSubscriptionModel(
      {required super.id,
      required HabitModel habit,
      required super.subscriptionDate})
      : super(habit: habit);
}
