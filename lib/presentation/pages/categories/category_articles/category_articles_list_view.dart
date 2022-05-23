part of 'category_articles_screen.dart';

class CategoryArticlesListView extends StatelessWidget {
  final List<ArticleEntity> articles;
  const CategoryArticlesListView({Key? key, required this.articles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding:
              EdgeInsets.only(left: Sizes.dimen_14.w, right: Sizes.dimen_14.w),
          child: ArticleCard(article: articles[index]),
        );
      },
    );
  }
}
