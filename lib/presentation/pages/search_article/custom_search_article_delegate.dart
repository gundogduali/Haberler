import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/constants/size_constants.dart';
import '../../../common/extensions/size_extensions.dart';
import '../../../common/generated/locale_keys.g.dart';
import '../../blocs/search_article/search_article_cubit.dart';
import '../../themes/app_color.dart';
import '../../widgets/app_error_widget.dart';
import '../../widgets/article_card.dart';

class CustomSearchArticleDelegate extends SearchDelegate {
  final SearchArticleCubit searchArticleCubit;

  CustomSearchArticleDelegate(this.searchArticleCubit);

  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context).copyWith(
        inputDecorationTheme: InputDecorationTheme(
      hintStyle: Theme.of(context).textTheme.bodyText1,
    ));
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: query.isEmpty ? null : () => query = '',
        icon: Icon(
          Icons.clear,
          color: query.isEmpty ? Colors.transparent : AppColor.white,
        ),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return InkWell(
      onTap: () => close(context, null),
      child: Icon(
        Icons.arrow_back_ios,
        color: AppColor.white,
        size: Sizes.dimen_8.h,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    searchArticleCubit.searchTermChanged(query);

    return BlocBuilder<SearchArticleCubit, SearchArticleState>(
      builder: (context, state) {
        if (state is SearchArticleError) {
          return AppErrorWidget(
              errorType: state.errorType,
              onPressed: () => searchArticleCubit.searchTermChanged(query));
        } else if (state is SearchArticleLoaded) {
          final articles = state.articles;
          if (articles.isEmpty) {
            return Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 64.w),
                child: Text(LocaleKeys.noArticlesSearched.tr()),
              ),
            );
          }
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Sizes.dimen_26.w, vertical: Sizes.dimen_4.h),
            child: ListView.builder(
              itemCount: articles.length,
              itemBuilder: (BuildContext context, int index) {
                return ArticleCard(article: articles[index]);
              },
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const SizedBox.shrink();
  }
}
