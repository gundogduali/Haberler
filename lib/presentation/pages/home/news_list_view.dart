import 'package:flutter/material.dart';

import '../../../common/constants/size_constants.dart';
import '../../../common/extensions/size_extensions.dart';
import '../../../common/extensions/string_extensions.dart';
import '../../../domain/entities/article_entity.dart';
import '../../themes/app_color.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({Key? key, required this.news}) : super(key: key);
  final List<ArticleEntity> news;

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.w),
      child: ListView.builder(
        itemCount: widget.news.length,
        itemBuilder: (BuildContext context, int index) {
          final article = widget.news[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 25),
            height: 45.h,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(Sizes.dimen_8.w),
                  child: article.urlToImage != null
                      ? Image.network(
                          article.urlToImage!,
                          fit: BoxFit.cover,
                          width: 120.w,
                          height: 50.h,
                        )
                      : const Placeholder(),
                ),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(Sizes.dimen_8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          article.title,
                          maxLines: 3,
                          overflow: TextOverflow.fade,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      Text(
                        article.publishedAt!.dateParse(),
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: AppColor.mineShaft),
                      ),
                    ],
                  ),
                )),
              ],
            ),
          );
        },
      ),
    );
  }
}
