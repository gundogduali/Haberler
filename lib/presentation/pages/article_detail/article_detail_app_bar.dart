part of 'article_detail_screen.dart';

class ArticleDetailAppBar extends StatelessWidget {
  const ArticleDetailAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(
            Icons.arrow_back_ios,
            color: AppColor.white,
            size: Sizes.dimen_12.h,
          ),
        ),
        Icon(
          Icons.favorite_border,
          size: Sizes.dimen_12.h,
          color: AppColor.white,
        ),
      ],
    );
  }
}
