import 'dart:ui';

import 'package:habit_app/core/core.dart';
import 'package:habit_app/features/home/domain/entites/quote_entity.dart';

abstract class HomeRepository {
  ResultFuture<QuoteEntity> getDailyQuote(Locale locale);
  ResultFuture<String?> getUsername();
  ResultVoid saveUsername(String username);
}
