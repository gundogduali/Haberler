import 'package:flutter/material.dart';

import '../../../common/constants/size_constants.dart';
import '../../../common/extensions/size_extensions.dart';
import '../../../common/extensions/string_extensions.dart';
import '../../../common/screenutil/screenutil.dart';
import '../../../domain/entities/article_entity.dart';
import '../../themes/app_color.dart';
import '../../widgets/custom_place_holder.dart';

part 'article_detail_app_bar.dart';
part 'article_poster.dart';

class ArticleDetailScreen extends StatefulWidget {
  final ArticleEntity article;
  const ArticleDetailScreen({Key? key, required this.article})
      : super(key: key);

  @override
  State<ArticleDetailScreen> createState() => _ArticleDetailScreenState();
}

class _ArticleDetailScreenState extends State<ArticleDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ArticlePoster(imageUrl: widget.article.urlToImage),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Sizes.dimen_16.w, vertical: Sizes.dimen_8.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.article.title,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontSize: 22,
                        ),
                    maxLines: 2,
                  ),
                  Text(
                    widget.article.publishedAt == null
                        ? DateTime.now().toString()
                        : widget.article.publishedAt!.dateParse(),
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          fontSize: Sizes.dimen_12.sp,
                        ),
                  ),
                ],
              ),
            ),
            const Divider(
              indent: 13,
              endIndent: 13,
              thickness: 0.5,
              color: AppColor.mineShaft,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Sizes.dimen_16.w, vertical: Sizes.dimen_8.h),
              child: Text(
                widget.article.content ?? '',
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(fontSize: 14.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
