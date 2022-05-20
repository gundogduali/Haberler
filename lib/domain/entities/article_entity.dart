// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class ArticleEntity extends Equatable {
  final String title;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;
  final String? author;

  const ArticleEntity({
    required this.title,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
    required this.author,
  });

  @override
  List<Object?> get props => [title];

  @override
  bool? get stringify => true;
}
