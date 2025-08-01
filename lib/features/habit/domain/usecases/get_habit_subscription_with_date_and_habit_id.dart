import 'dart:ui';

import 'package:habit_app/core/core.dart';
import 'package:habit_app/features/habit/domain/entities/habit_subscription.dart';
import 'package:habit_app/features/habit/domain/repository/habit_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetHabitSubscriptionWithDateAndHabitId
    extends Usecase<HabitSubscriptionEntity?, GeySubParams> {
  final HabitRepo _repo;

  GetHabitSubscriptionWithDateAndHabitId(this._repo);
  @override
  ResultFuture<HabitSubscriptionEntity?> call(GeySubParams params) {
    return _repo.getHabitSubscription(
        habitId: params.habitId, date: params.date, locale: params.locale);
  }
}

class GeySubParams {
  final int habitId;
  final DateTime date;
  final Locale locale;

  GeySubParams(
      {required this.habitId, required this.date, required this.locale});
}
