part of 'home_screen.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({Key? key, required this.news}) : super(key: key);
  final List<ArticleEntity> news;

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  @override
  void initState() {
    super.initState();
    widget.news.removeAt(0);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.w),
      child: ListView.builder(
        itemCount: widget.news.length,
        itemBuilder: (BuildContext context, int index) {
          final article = widget.news[index];
          return ArticleCard(article: article);
        },
      ),
    );
  }
}
