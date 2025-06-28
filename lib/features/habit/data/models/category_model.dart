import 'package:flutter/material.dart';
import 'package:habit_app/core/database/app_database.dart';
import 'package:habit_app/features/habit/domain/entities/category_entity.dart';

class CategoryModel extends CategoryEntity {
  const CategoryModel(
      {required super.id,
      required super.title,
      required super.description,
      super.imagePath});

  factory CategoryModel.fromDrift(Category category, Locale locale) {
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

    return CategoryModel(
      id: category.id,
      title: getLocalized(category.titleEn, category.titleRu, category.titleKk),
      description: getLocalized(category.descriptionEn, category.descriptionRu,
          category.descriptionKk),
      imagePath: category.imagePath,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'image_path': imagePath
    };
  }

  @override
  String toString() {
    return 'CategoryModel(id: $id, title: $title, description: $description, imagePath: $imagePath)';
  }
}
