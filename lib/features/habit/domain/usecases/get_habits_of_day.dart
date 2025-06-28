import 'package:flutter/material.dart';
import 'package:habit_app/core/core.dart';
import 'package:habit_app/features/habit/domain/entities/habit_info.dart';
import 'package:habit_app/features/habit/domain/repository/habit_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetHabitsOfDay extends Usecase<List<HabitInfo>, GetHabitsOfDayParams> {
  final HabitRepo _myPlanRepo;

  GetHabitsOfDay(this._myPlanRepo);
  @override
  ResultFuture<List<HabitInfo>> call(GetHabitsOfDayParams params) async {
    return await _myPlanRepo.getHabitSubscriptionsOfDay(
        params.date, params.locale);
  }
}

class GetHabitsOfDayParams {
  final DateTime date;
  final Locale locale;

  GetHabitsOfDayParams({required this.date, required this.locale});
}
