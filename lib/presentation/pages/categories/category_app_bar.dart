part of 'categories_screen.dart';

class CategoriesAppBar extends StatelessWidget {
  const CategoriesAppBar({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil.statusBarHeight + Sizes.dimen_4.h,
        left: Sizes.dimen_26.w,
        right: Sizes.dimen_8.w,
      ),
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontSize: Sizes.dimen_22.sp,
                ),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(IconPaths.icSearch.str())),
        ],
      ),
    );
  }
}
