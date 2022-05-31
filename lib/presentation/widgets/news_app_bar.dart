import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/presentation/blocs/search_article/search_article_cubit.dart';

import '../../common/constants/icon_paths.dart';
import '../../common/constants/size_constants.dart';
import '../../common/extensions/size_extensions.dart';
import '../../common/screenutil/screenutil.dart';
import '../pages/search_article/custom_search_article_delegate.dart';
import 'logo.dart';

class NewsAppBar extends StatelessWidget {
  const NewsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil.statusBarHeight + 6.h,
        left: Sizes.dimen_8.w,
        right: Sizes.dimen_8.w,
      ),
      child: Row(
        children: [
          const Expanded(child: Logo(height: Sizes.dimen_36)),
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearchArticleDelegate(BlocProvider.of<SearchArticleCubit>(context)));
              },
              icon: SvgPicture.asset(IconPaths.icSearch.str())),
        ],
      ),
    );
  }
}
