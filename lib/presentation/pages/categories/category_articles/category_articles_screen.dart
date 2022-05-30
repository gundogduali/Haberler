import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/constants/size_constants.dart';
import '../../../../common/extensions/size_extensions.dart';
import '../../../../common/generated/locale_keys.g.dart';
import '../../../../di/get_it.dart';
import '../../../../domain/entities/article_entity.dart';
import '../../../blocs/category_tabbed/category_tabbed_cubit.dart';
import '../../../widgets/app_error_widget.dart';
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
  late final CategoryTabbedCubit _categoryTabbedCubit;

  @override
  void initState() {
    super.initState();
    _categoryTabbedCubit = getItInstance<CategoryTabbedCubit>();
    _categoryTabbedCubit.loadArticlesbyCategory(widget.categoryTab.category);
  }

  @override
  void dispose() {
    _categoryTabbedCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CategoryTabbedCubit, CategoryTabbedState>(
        bloc: _categoryTabbedCubit,
        builder: (context, state) {
          if (state is CategoryTabLoad) {
            return state.articles.isEmpty
                ? Expanded(
                    child: Center(child: Text(LocaleKeys.noArticles.tr())))
                : _body(state.articles);
          }
          if (state is CategoryTabLoadError) {
            return Center(
              child: AppErrorWidget(
                onPressed: () =>
                    _categoryTabbedCubit.loadArticlesbyCategory(state.category),
                errorType: state.errorType,
              ),
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
