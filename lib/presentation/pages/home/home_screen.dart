import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/extensions/size_extensions.dart';
import '../../../common/extensions/string_extensions.dart';
import '../../../common/generated/locale_keys.g.dart';
import '../../../domain/entities/article_entity.dart';
import '../../blocs/article_list/article_list_cubit.dart';
import '../../widgets/app_error_widget.dart';
import '../../widgets/article_card.dart';
import '../../widgets/news_app_bar.dart';

part 'article_container_widget.dart';
part 'news_list_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  ArticleListCubit get _articleListCubit =>
      BlocProvider.of<ArticleListCubit>(context);

  @override
  void initState() {
    super.initState();
    _articleListCubit.getArticles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ArticleListCubit, ArticleListState>(
        bloc: _articleListCubit,
        builder: (context, state) {
          if (state is ArticleListLoaded) {
            if (state.articles.isNotEmpty) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  FractionallySizedBox(
                    alignment: Alignment.topCenter,
                    heightFactor: 0.45,
                    child: Column(
                      children: [
                        const Expanded(flex: 3, child: NewsAppBar()),
                        Expanded(
                            flex: 7,
                            child: ArticleContainerWidget(
                                article: state.articles.first)),
                      ],
                    ),
                  ),
                  FractionallySizedBox(
                    alignment: Alignment.bottomCenter,
                    heightFactor: 0.55,
                    child: NewsListView(news: state.articles),
                  ),
                ],
              );
            } else {
              return Center(
                child: Text(
                  LocaleKeys.noArticles.tr(),
                  style: Theme.of(context).textTheme.headline6,
                ),
              );
            }
          }
          if (state is ArticleListError) {
            return Center(
              child: AppErrorWidget(
                onPressed: () => _articleListCubit.getArticles(),
                errorType: state.errorType,
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
