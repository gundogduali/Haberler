import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di/get_it.dart';
import '../../blocs/article_list/article_list_cubit.dart';
import '../../widgets/news_app_bar.dart';
import 'article_container_widget.dart';
import 'news_list_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ArticleListCubit _articleListCubit;

  @override
  void initState() {
    super.initState();
    _articleListCubit = getItInstance<ArticleListCubit>();
    _articleListCubit.getArticles();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _articleListCubit.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _articleListCubit,
      child: Scaffold(
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
      ),
    );
  }
}
