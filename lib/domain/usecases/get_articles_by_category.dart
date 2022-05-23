import 'package:dartz/dartz.dart';

import '../entities/app_error.dart';
import '../entities/article_entity.dart';
import '../entities/category_params.dart';
import '../repositories/news_repository.dart';
import 'usecase.dart';

class GetArticlesbyCategory
    extends UseCase<List<ArticleEntity>?, CategoryParams> {
  final INewsRepository repository;

  GetArticlesbyCategory(this.repository);

  @override
  Future<Either<AppError, List<ArticleEntity>?>> call(CategoryParams params) async {
    return await repository.getArticlesbyCategory(params.category);
  }
}
