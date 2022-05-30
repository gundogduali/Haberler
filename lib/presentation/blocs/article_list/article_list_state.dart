part of 'article_list_cubit.dart';

abstract class ArticleListState extends Equatable {
  const ArticleListState();

  @override
  List<Object> get props => [];
}

class ArticleListInitial extends ArticleListState {}

class ArticleListError extends ArticleListState {
  final AppErrorType errorType;

  const ArticleListError(this.errorType);
}

class ArticleListLoaded extends ArticleListState {
  final List<ArticleEntity> articles;

  const ArticleListLoaded({required this.articles});

  @override
  List<Object> get props => [articles];
}
