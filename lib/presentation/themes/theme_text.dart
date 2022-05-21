import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/constants/size_constants.dart';
import '../../common/extensions/size_extensions.dart';
import 'app_color.dart';

class ThemeText {
  const ThemeText._();

  static TextTheme get _soraTextTheme => GoogleFonts.soraTextTheme();

  static TextStyle get _whiteHeadline5 => _soraTextTheme.headline6!.copyWith(
        fontSize: Sizes.dimen_17.sp,
        color: AppColor.white,
        fontWeight: FontWeight.bold,
      );

  static getTextTheme() => TextTheme(
    headline5: _whiteHeadline5,
  );
}
