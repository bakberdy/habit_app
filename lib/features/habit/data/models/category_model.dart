import 'package:habit_app/features/habit/domain/entities/category_entity.dart';

class CategoryModel extends CategoryEntity {
  const CategoryModel(
      {required super.id,
      required super.title,
      required super.description,
      super.imagePath});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      imagePath: json['image_path'] as String?,
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
