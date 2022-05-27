import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../common/screenutil/screenutil.dart';
import '../di/get_it.dart';
import 'blocs/article_list/article_list_cubit.dart';
import 'blocs/bottom_navigation/navigation_cubit.dart';
import 'blocs/category_tabbed/category_tabbed_cubit.dart';
import 'pages/root/root_screen.dart';
import 'themes/light_theme.dart';

class NewsApp extends StatelessWidget {
  NewsApp({Key? key}) : super(key: key);

  final CategoryTabbedCubit _categoryTabbedCubit =
      getItInstance<CategoryTabbedCubit>();
  final ArticleListCubit _articleListCubit = getItInstance<ArticleListCubit>();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavigationCubit(),
        ),
        BlocProvider(
          create: (context) => _categoryTabbedCubit,
        ),
        BlocProvider(
          create: (context) => _articleListCubit,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'News App',
        theme: LightTheme().theme,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: const RootScreen(),
      ),
    );
  }
}
