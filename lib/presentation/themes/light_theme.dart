import 'package:flutter/material.dart';

import 'app_color.dart';
import 'theme_text.dart';

class LightTheme {
  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
      scaffoldBackgroundColor: AppColor.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: ThemeText.getTextTheme(),
      appBarTheme: const AppBarTheme(
        elevation: 0,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: AppColor.purpleHeart,
        primary: AppColor.purpleHeart,
      ),
    );
  }
}
