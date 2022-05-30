import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../common/constants/news_categories.dart';
import '../../../domain/entities/app_error.dart';
import '../../../domain/entities/article_entity.dart';
import '../../../domain/entities/category_params.dart';
import '../../../domain/usecases/get_articles_by_category.dart';

part 'category_tabbed_state.dart';

class CategoryTabbedCubit extends Cubit<CategoryTabbedState> {
  final GetArticlesbyCategory getArticlesbyCategory;

  CategoryTabbedCubit({required this.getArticlesbyCategory})
      : super(CategoryTabbedInitial());

  Future<void> loadArticlesbyCategory(NewsCategories category) async {
    final Either<AppError, List<ArticleEntity>?> newsEither =
        await getArticlesbyCategory(CategoryParams(category.name));

    emit(newsEither.fold((l) => CategoryTabLoadError(l.appErrorType, category),
        (articles) => CategoryTabLoad(articles: articles ?? [])));
  }
}
