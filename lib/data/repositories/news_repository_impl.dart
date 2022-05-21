// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:news_app/data/data_sources/news_remote_data_source.dart';
import 'package:news_app/data/models/article_model.dart';
import 'package:news_app/domain/repositories/news_repository.dart';

import '../../domain/entities/app_error.dart';

class NewsRepository extends INewsRepository {
  final NewsRemoteDataSource remoteDataSource;
  NewsRepository(
    this.remoteDataSource,
  );

  @override
  Future<Either<AppError, List<ArticleModel>?>> getTopHeadlines() async {
    try {
      final news = await remoteDataSource.getTopHeadlines();
      return Right(news);
    } on Exception {
      return const Left(AppError("Something went wrong."));
    }
  }
}
