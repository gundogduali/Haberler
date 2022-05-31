import 'package:dartz/dartz.dart';

import '../entities/app_error.dart';
import '../entities/article_entity.dart';

abstract class INewsRepository {
  Future<Either<AppError, List<ArticleEntity>?>> getTopHeadlines();
  Future<Either<AppError, List<ArticleEntity>?>> getArticlesbyCategory(
      String category);
  Future<Either<AppError, List<ArticleEntity>?>> getSearchedArticles(
      String searchTerm);
}
