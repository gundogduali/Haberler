import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/app_error.dart';
import '../../../domain/entities/article_entity.dart';
import '../../../domain/entities/no_params.dart';
import '../../../domain/usecases/get_top_headlines.dart';

part 'article_list_state.dart';

class ArticleListCubit extends Cubit<ArticleListState> {
  final GetTopHeadlines getTopHeadlines;
  ArticleListCubit({
    required this.getTopHeadlines,
  }) : super(ArticleListInitial());

  Future<void> getArticles() async {
    final articlesEither = await getTopHeadlines(NoParams());
    emit(articlesEither.fold(
      (l) => ArticleListError(l.appErrorType),
      (articles) => ArticleListLoaded(
        articles: articles ?? [],
      ),
    ));
  }
}
