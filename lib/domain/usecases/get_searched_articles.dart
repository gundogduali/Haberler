import 'package:dartz/dartz.dart';

import '../entities/app_error.dart';
import '../entities/article_entity.dart';
import '../entities/article_search_params.dart';
import '../repositories/news_repository.dart';
import 'usecase.dart';

class GetSearchedArticles
    extends UseCase<List<ArticleEntity>?, ArticleSearchParams> {
  final INewsRepository repository;

  GetSearchedArticles(this.repository);

  @override
  Future<Either<AppError, List<ArticleEntity>?>> call(
      ArticleSearchParams params) async {
    return await repository.getSearchedArticles(params.searchTerm);
  }
}
