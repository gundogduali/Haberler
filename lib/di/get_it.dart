import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:news_app/domain/usecases/get_articles_by_category.dart';
import 'package:news_app/presentation/blocs/category_tabbed/category_tabbed_cubit.dart';

import '../data/core/api_client.dart';
import '../data/data_sources/news_remote_data_source.dart';
import '../data/repositories/news_repository_impl.dart';
import '../domain/repositories/news_repository.dart';
import '../domain/usecases/get_top_headlines.dart';
import '../presentation/blocs/article_list/article_list_cubit.dart';

final getItInstance = GetIt.I;

final sl = GetIt.instance;

Future<void> init() async {
  //! External
  sl.registerLazySingleton<Client>(() => Client());

  //! Core
  sl.registerLazySingleton<ApiClient>(() => ApiClient(sl()));

  //! Features
  //* Data Sources
  sl.registerLazySingleton<NewsRemoteDataSource>(
      () => NewsRemoteDataSource(sl()));

  //* Repository
  sl.registerLazySingleton<INewsRepository>(() => NewsRepository(sl()));

  //* Use Cases
  sl.registerLazySingleton<GetTopHeadlines>(() => GetTopHeadlines(sl()));
  sl.registerLazySingleton<GetArticlesbyCategory>(
      () => GetArticlesbyCategory(sl()));

  //* Blocs
  sl.registerFactory<ArticleListCubit>(
      () => ArticleListCubit(getTopHeadlines: sl()));

  sl.registerFactory<CategoryTabbedCubit>(
      () => CategoryTabbedCubit(getArticlesbyCategory: sl()));
}
