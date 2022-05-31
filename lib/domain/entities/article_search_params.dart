import 'package:equatable/equatable.dart';

class ArticleSearchParams extends Equatable {
  final String searchTerm;

  const ArticleSearchParams({required this.searchTerm});

  @override
  List<Object?> get props => [searchTerm];
}
