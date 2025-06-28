import 'dart:ui';

import 'package:habit_app/core/core.dart';
import 'package:habit_app/features/home/domain/entites/quote_entity.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HomeReposory)
abstract class HomeReposory {
  ResultFuture<QuoteEntity> getDailyQuote(Locale locale);
}
