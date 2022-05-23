import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/constants/size_constants.dart';
import '../../../../common/extensions/size_extensions.dart';
import '../../../../domain/entities/article_entity.dart';
import '../../../blocs/category_tabbed/category_tabbed_cubit.dart';
import '../../../widgets/article_card.dart';
import '../categories_screen.dart';

part 'category_articles_list_view.dart';

class CategoryArticlesScreen extends StatefulWidget {
  const CategoryArticlesScreen({Key? key, required this.categoryTab})
      : super(key: key);
  final CategoryTab categoryTab;

  @override
  State<CategoryArticlesScreen> createState() => _CategoryArticlesScreenState();
}

class _CategoryArticlesScreenState extends State<CategoryArticlesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CategoryTabbedCubit, CategoryTabbedState>(
        builder: (context, state) {
          if (state is CategoryTabLoad) {
            return state.articles.isEmpty
                ? const Expanded(
                    child: Center(child: Text('Malesef Haber bulunamadı')))
                : _body(state.articles);
          }
          if (state is CategoryTabLoadError) {
            return const Center(
              child: Text('Error'),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }

  Widget _body(List<ArticleEntity> articles) {
    return Column(
      children: [
        CategoriesAppBar(
          title: widget.categoryTab.title,
        ),
        Expanded(
          child: CategoryArticlesListView(articles: articles),
        ),
      ],
    );
  }
}
