import 'dart:ui';

import 'package:habit_app/core/core.dart';
import 'package:habit_app/features/home/domain/entites/quote_entity.dart';
import 'package:habit_app/features/home/domain/repository/home_reposory.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetDailyQuote extends Usecase<QuoteEntity, Locale> {
  final HomeReposory _homeReposory;

  GetDailyQuote(this._homeReposory);
  @override
  ResultFuture<QuoteEntity> call(Locale params) {
    return _homeReposory.getDailyQuote(params);
  }
}
