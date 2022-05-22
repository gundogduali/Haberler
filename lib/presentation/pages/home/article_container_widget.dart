import 'package:flutter/material.dart';

import '../../../common/extensions/size_extensions.dart';
import '../../../common/extensions/string_extensions.dart';
import '../../../domain/entities/article_entity.dart';

class ArticleContainerWidget extends StatelessWidget {
  const ArticleContainerWidget({Key? key, required this.article})
      : super(key: key);

  final ArticleEntity article;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        article.urlToImage == null
            ? const Placeholder()
            : Image.network(
                article.urlToImage!,
                fit: BoxFit.cover,
              ),
        _textPadding(
          context,
          title: article.title,
          left: 26,
          top: 60,
          style: Theme.of(context).textTheme.headline5!,
        ),
        _textPadding(
          context,
          title: article.publishedAt!.dateParse(),
          left: 26,
          top: 80,
          style: Theme.of(context).textTheme.caption!,
        ),
      ],
    );
  }

  Padding _textPadding(BuildContext context,
      {required int top,
      required int left,
      required TextStyle style,
      required String title}) {
    return Padding(
      padding: EdgeInsets.only(
        top: top.h,
        left: left.w,
      ),
      child: Text(
        title,
        style: style,
        maxLines: 2,
        overflow: TextOverflow.clip,
      ),
    );
  }
}
