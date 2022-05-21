import 'package:dartz/dartz.dart';

import '../entities/app_error.dart';
import '../entities/article_entity.dart';
import '../entities/no_params.dart';
import '../repositories/news_repository.dart';
import 'usecase.dart';

class GetTopHeadlines extends UseCase<List<ArticleEntity>?, NoParams> {
  final INewsRepository repository;

  GetTopHeadlines(this.repository);

  @override
  Future<Either<AppError, List<ArticleEntity>?>> call(NoParams params) async {
    return await repository.getTopHeadlines();
  }
}
