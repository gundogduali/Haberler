
import '../core/api_client.dart';
import '../core/api_paths.dart';
import '../models/article_model.dart';
import '../models/news_result_model.dart';

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
