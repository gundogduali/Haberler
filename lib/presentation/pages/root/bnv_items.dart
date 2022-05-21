import 'package:flutter/material.dart';

import '../../../common/constants/bnv_icon_paths.dart';
import '../../../common/constants/size_constants.dart';
import '../../../common/extensions/size_extensions.dart';

class BnvItems {
  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        icon: _iconImage(BnvIconPaths.icHome.str()),
        activeIcon: _iconImage(BnvIconPaths.icHomeActive.str()),
        label: ''),
    BottomNavigationBarItem(
        icon: _iconImage(BnvIconPaths.icGenres.str()),
        activeIcon: _iconImage(BnvIconPaths.icGenresActive.str()),
        label: 'Genres'),
    BottomNavigationBarItem(
        icon: _iconImage(BnvIconPaths.icProfile.str()),
        activeIcon: _iconImage(BnvIconPaths.icProfileActive.str()),
        label: ''),
  ];
}

Widget _iconImage(path) {
  return Image.asset(
    path,
    width: Sizes.dimen_20.w,
    height: Sizes.dimen_20,
  );
}
