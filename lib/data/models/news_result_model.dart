import 'article_model.dart';

class NewsResultModel {
  List<ArticleModel>? articles;

  NewsResultModel({this.articles});

  NewsResultModel.fromJson(Map<String, dynamic> json) {
    if (json['articles'] != null) {
      articles = <ArticleModel>[];
      json['articles'].forEach((v) {
        articles!.add(ArticleModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (articles != null) {
      data['articles'] = articles!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
