import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../common/screenutil/screenutil.dart';
import 'blocs/bottom_navigation/navigation_cubit.dart';
import 'pages/root/root_screen.dart';
import 'themes/light_theme.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init();
    return BlocProvider(
      create: (context) => NavigationCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'News App',
        theme: LightTheme().theme,
        home: const RootScreen(),
      ),
    );
  }
}
