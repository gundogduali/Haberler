import 'package:flutter/material.dart';

import '../../../common/constants/icon_paths.dart';
import '../../../common/constants/size_constants.dart';
import '../../../common/extensions/size_extensions.dart';

class BnvItems {
  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        icon: _iconImage(IconPaths.icHome.str()),
        activeIcon: _iconImage(IconPaths.icHomeActive.str()),
        label: ''),
    BottomNavigationBarItem(
        icon: _iconImage(IconPaths.icGenres.str()),
        activeIcon: _iconImage(IconPaths.icGenresActive.str()),
        label: 'Genres'),
    BottomNavigationBarItem(
        icon: _iconImage(IconPaths.icProfile.str()),
        activeIcon: _iconImage(IconPaths.icProfileActive.str()),
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
