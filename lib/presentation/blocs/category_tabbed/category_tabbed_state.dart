part of 'category_tabbed_cubit.dart';

abstract class CategoryTabbedState extends Equatable {
  const CategoryTabbedState();

  @override
  List<Object> get props => [];
}

class CategoryTabbedInitial extends CategoryTabbedState {}

class CategoryTabLoad extends CategoryTabbedState {
  final List<ArticleEntity> articles;

  const CategoryTabLoad({required this.articles}) : super();

  @override
  List<Object> get props => [articles];
}

class CategoryTabLoadError extends CategoryTabbedState {
  final AppErrorType errorType;
  final NewsCategories category;

  const CategoryTabLoadError(this.errorType, this.category);
}
