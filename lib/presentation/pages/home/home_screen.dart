import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/article_list/article_list_cubit.dart';
import '../../widgets/news_app_bar.dart';
import 'article_container_widget.dart';
import 'news_list_view.dart';

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
        builder: (context, state) {
          if (state is ArticleListLoaded) {
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
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
