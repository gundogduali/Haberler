// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:news_app/data/core/api_client.dart';
import 'package:news_app/data/core/api_paths.dart';
import 'package:news_app/data/models/article_model.dart';
import 'package:news_app/data/models/news_result_model.dart';

abstract class INewsRemoteDataSource {
  Future<List<ArticleModel>?> getTopHeadlines();
  Future<List<ArticleModel>?> getByCategory(String category);
}

class NewsRemoteDataSource extends INewsRemoteDataSource {
  final ApiClient _client;
  NewsRemoteDataSource(
    this._client,
  );

  @override
  Future<List<ArticleModel>?> getTopHeadlines() async {
    final response = await _client.get(ApiPaths.getTopHeadlines.str());
    final articles = NewsResultModel.fromJson(response).articles;
    print(articles);
    return articles;
  }

  @override
  Future<List<ArticleModel>?> getByCategory(String category) async {
    final response = await _client.get(ApiPaths.getByCategory.str(
      category: category,
    ));
    final articles = NewsResultModel.fromJson(response).articles;
    print(articles);
    return articles;
  }
}
