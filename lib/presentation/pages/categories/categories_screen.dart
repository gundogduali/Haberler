import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/constants/icon_paths.dart';
import '../../../common/constants/news_categories.dart';
import '../../../common/constants/size_constants.dart';
import '../../../common/extensions/size_extensions.dart';
import '../../../common/generated/locale_keys.g.dart';
import '../../../common/screenutil/screenutil.dart';
import '../../blocs/category_tabbed/category_tabbed_cubit.dart';
import 'category_articles/category_articles_screen.dart';

part 'category_app_bar.dart';
part 'category_container_widget.dart';
part 'category_tab.dart';
part 'category_tab_constants.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen>
    with SingleTickerProviderStateMixin {
  CategoryTabbedCubit get categoryTabbedCubit =>
      BlocProvider.of<CategoryTabbedCubit>(context);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoriesAppBar(title: LocaleKeys.categories.tr()),
        Expanded(
          child: Padding(
            padding:
                EdgeInsets.only(left: Sizes.dimen_20.w, right: Sizes.dimen_6.w),
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 25.w,
                crossAxisSpacing: 15.w,
              ),
              children: CategoryTabConstants.categoryTabs
                  .map((e) => CategoryContainerWidget(
                        tab: e,
                        onTap: () => onCategoryTapped(e),
                      ))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }

  onCategoryTapped(CategoryTab categoryTab) {
    categoryTabbedCubit.loadArticlesbyCategory(categoryTab.category);
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => CategoryArticlesScreen(
        categoryTab: categoryTab,
      ),
    ));
  }
}
