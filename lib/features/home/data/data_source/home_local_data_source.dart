import 'dart:convert';
import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:habit_app/features/home/data/models/quote_model.dart';
import 'package:habit_app/features/home/domain/entites/quote_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

abstract class HomeLocalDataSource {
  Future<QuoteEntity> getDailyQuote(Locale locale);
}

@LazySingleton(as: HomeLocalDataSource)
class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  Future<QuoteEntity> getDailyQuote(Locale locale) async {
    final quotesJson =
        await rootBundle.loadString('lib/assets/data/quotes.json');
    final List<dynamic> quotesData = jsonDecode(quotesJson);

    final now = DateTime.now();
    final dayOfYear = int.parse(DateFormat("D").format(now));
    final index = dayOfYear % quotesData.length;

    final quoteMap = quotesData[index];
    final langCode = locale.languageCode;

    return QuoteModel(
      author: quoteMap['author_$langCode'] ?? quoteMap['author_en'],
      text: quoteMap['content_$langCode'] ?? quoteMap['content_en'],
    );
  }
}
