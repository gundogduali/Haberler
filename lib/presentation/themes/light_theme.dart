import 'package:flutter/material.dart';

import 'app_color.dart';
import 'theme_text.dart';

class LightTheme {
  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
      primaryColor: AppColor.white,
      scaffoldBackgroundColor: AppColor.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: ThemeText.getTextTheme(),
      appBarTheme: const AppBarTheme(
        elevation: 0,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 0,
      ),
      
    );
  }
}
