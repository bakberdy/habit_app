import 'package:equatable/equatable.dart';

class TipEntity extends Equatable {
  final int id;
  final String title;
  final String content;

  const TipEntity(
      {required this.id, required this.title, required this.content});

  @override
  List<Object?> get props => [title, content];
}
