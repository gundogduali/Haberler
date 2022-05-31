import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/constants/size_constants.dart';
import '../../common/extensions/size_extensions.dart';
import 'app_color.dart';

class ThemeText {
  const ThemeText._();

  static TextTheme get _soraTextTheme => GoogleFonts.soraTextTheme();

  static TextStyle get _whiteHeadline5 => _soraTextTheme.headline5!.copyWith(
        fontSize: Sizes.dimen_17.sp,
        color: AppColor.white,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get _blackHeadline6 => _soraTextTheme.headline6!.copyWith(
        fontSize: Sizes.dimen_14.sp,
        color: AppColor.white,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get _caption => _soraTextTheme.caption!.copyWith(
        fontSize: Sizes.dimen_10.sp,
        color: AppColor.mineShaft,
        letterSpacing: 0,
      );

  static TextStyle get _semiSubtitle2 => _soraTextTheme.subtitle2!.copyWith(
        color: AppColor.mineShaft,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
      );
  static TextStyle get _whiteButton => _soraTextTheme.subtitle2!.copyWith(
        color: AppColor.white,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.5,
      );

  static TextStyle get _whiteBody1 => _soraTextTheme.bodyText1!.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColor.white,
      );

  static getTextTheme() => TextTheme(
        headline6: _blackHeadline6,
        headline5: _whiteHeadline5,
        caption: _caption,
        subtitle2: _semiSubtitle2,
        button: _whiteButton,
        bodyText1: _whiteBody1,
      );
}
