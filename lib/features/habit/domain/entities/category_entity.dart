import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable {
  final int id;
  final String title;
  final String description;
  final String? imagePath;

  const CategoryEntity({
    required this.id,
    required this.title,
    required this.description,
    this.imagePath,
  });

  @override
  List<Object?> get props => [title, description, imagePath];
}
