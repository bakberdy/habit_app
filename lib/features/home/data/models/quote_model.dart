import 'package:habit_app/features/home/domain/entites/quote_entity.dart';

class QuoteModel extends QuoteEntity {
  QuoteModel({required super.author, required super.text});
  factory QuoteModel.fromJson(Map<String, dynamic> json) {
    return QuoteModel(author: json['author'], text: json['text']);
  }
}
