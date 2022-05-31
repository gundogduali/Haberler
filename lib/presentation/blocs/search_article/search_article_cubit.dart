import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/app_error.dart';
import '../../../domain/entities/article_entity.dart';
import '../../../domain/entities/article_search_params.dart';
import '../../../domain/usecases/get_searched_articles.dart';

part 'search_article_state.dart';

class SearchArticleCubit extends Cubit<SearchArticleState> {
  final GetSearchedArticles searchedArticles;
  SearchArticleCubit({required this.searchedArticles})
      : super(SearchArticleInitial());

  void searchTermChanged(String searchTerm) async {
    if (searchTerm.length > 2) {
      emit(SearchArticleLoading());
      final Either<AppError, List<ArticleEntity>?> response =
          await searchedArticles(ArticleSearchParams(searchTerm: searchTerm));

      emit(response.fold((l) => SearchArticleError(l.appErrorType),
          (articles) => SearchArticleLoaded(articles!)));
    }
  }
}
