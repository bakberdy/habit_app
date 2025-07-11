import 'dart:ui';

import 'package:habit_app/core/core.dart';
import 'package:habit_app/features/habit/domain/entities/habit_entity.dart';
import 'package:habit_app/features/habit/domain/repository/habit_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetHabitById extends Usecase<HabitEntity, GetHabitByIdParams> {
  final HabitRepo _repo;

  GetHabitById(this._repo);

  @override
  ResultFuture<HabitEntity> call(GetHabitByIdParams params) {
    return _repo.getHabitById(params.habitId, params.locale);
  }
}

class GetHabitByIdParams {
  final int habitId;
  final Locale locale;

  GetHabitByIdParams({required this.habitId, required this.locale});
}
