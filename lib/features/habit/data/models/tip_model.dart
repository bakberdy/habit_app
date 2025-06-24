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

  factory TipModel.fromDrift(Tip tip) {
    return TipModel(
      id: tip.id,
      title: tip.title,
      content: tip.content,
    );
  }
}
