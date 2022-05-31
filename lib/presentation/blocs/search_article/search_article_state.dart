part of 'search_article_cubit.dart';

abstract class SearchArticleState extends Equatable {
  const SearchArticleState();

  @override
  List<Object> get props => [];
}

class SearchArticleInitial extends SearchArticleState {}

class SearchArticleLoading extends SearchArticleState {}

class SearchArticleLoaded extends SearchArticleState {
  final List<ArticleEntity> articles;

  const SearchArticleLoaded(this.articles);

  @override
  List<Object> get props => [articles];
}

class SearchArticleError extends SearchArticleState {
  final AppErrorType errorType;

  const SearchArticleError(this.errorType);

  @override
  List<Object> get props => [errorType];
}
