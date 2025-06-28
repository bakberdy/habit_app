import 'package:flutter/material.dart';
import 'package:habit_app/core/core.dart';
import 'package:habit_app/features/habit/domain/entities/category_entity.dart';
import 'package:habit_app/features/habit/domain/repository/habit_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetCategories extends Usecase<List<CategoryEntity>, Locale> {
  final HabitRepo _repo;

  GetCategories(this._repo);

  @override
  ResultFuture<List<CategoryEntity>> call(Locale params) {
    return _repo.getCategories(locale: params);
  }
}
