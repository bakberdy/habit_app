import 'package:flutter/material.dart';
import 'package:habit_app/core/database/app_database.dart';
import 'package:habit_app/features/habit/domain/entities/tip_entity.dart';

class TipModel extends TipEntity {
  const TipModel(
      {required super.id, required super.title, required super.content});

  factory TipModel.fromJson(Map<String, dynamic> json) {
    return TipModel(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
    };
  }

  factory TipModel.fromDrift(Tip tip, Locale locale) {
    String getLocalized(String? en, String? ru, String? kk) {
      switch (locale.languageCode) {
        case 'ru':
          return ru ?? en ?? '';
        case 'kk':
          return kk ?? en ?? '';
        default:
          return en ?? '';
      }
    }

    return TipModel(
        id: tip.id,
        title: getLocalized(tip.titleEn, tip.titleRu, tip.titleKk),
        content: getLocalized(tip.contentEn, tip.contentRu, tip.contentKk));
  }
}
