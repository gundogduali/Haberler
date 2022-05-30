import 'package:flutter/material.dart';

import '../../common/constants/size_constants.dart';
import '../../common/extensions/size_extensions.dart';
import '../../common/extensions/string_extensions.dart';
import '../../domain/entities/article_entity.dart';
import '../pages/article_detail/article_detail_screen.dart';
import '../themes/app_color.dart';
import 'custom_place_holder.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    Key? key,
    required this.article,
  }) : super(key: key);

  final ArticleEntity article;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ArticleDetailScreen(article: article),
      )),
      child: Container(
        margin: EdgeInsets.only(bottom: Sizes.dimen_10.h),
        height: 45.h,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(Sizes.dimen_10.w),
              child: article.urlToImage != null
                  ? Image.network(
                      article.urlToImage!,
                      fit: BoxFit.cover,
                      width: 120.w,
                      height: 50.h,
                      errorBuilder: (context, object, stackTrace) {
                        return CustomPlaceHolder(
                            fallbackHeight: 50.h, fallbackWidth: 120.w);
                      },
                    )
                  : CustomPlaceHolder(
                      fallbackHeight: 50.h, fallbackWidth: 120.w),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(Sizes.dimen_4.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      article.title,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(
                      height: 4.h,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
