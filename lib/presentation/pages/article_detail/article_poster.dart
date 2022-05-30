part of 'article_detail_screen.dart';

class ArticlePoster extends StatelessWidget {
  final String? imageUrl;
  const ArticlePoster({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          imageUrl == null
              ? CustomPlaceHolder(
                  fallbackHeight: 400, fallbackWidth: ScreenUtil.screenWidth)
              : Image.network(
                  imageUrl!,
                  width: ScreenUtil.screenWidth,
                  height: 120.h,
                  fit: BoxFit.fitHeight,
                ),
          Positioned(
            left: Sizes.dimen_16.w,
            right: Sizes.dimen_16.w,
            top: ScreenUtil.statusBarHeight + Sizes.dimen_4.h,
            child: const ArticleDetailAppBar(),
          ),
        ],
      ),
    );
  }
}
