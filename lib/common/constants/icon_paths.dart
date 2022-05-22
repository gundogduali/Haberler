enum IconPaths {
  icHome,
  icHomeActive,
  icGenres,
  icGenresActive,
  icProfile,
  icProfileActive,
  icLogo,
  icSearch,
}

extension IconPathsExtension on IconPaths {
  String str() {
    switch (this) {
      case IconPaths.icHome:
        return 'assets/pngs/ic_home.png';
      case IconPaths.icHomeActive:
        return 'assets/pngs/ic_home_active.png';
      case IconPaths.icGenres:
        return 'assets/pngs/ic_genres.png';
      case IconPaths.icGenresActive:
        return 'assets/pngs/ic_genres_active.png';
      case IconPaths.icProfile:
        return 'assets/pngs/ic_profile.png';
      case IconPaths.icProfileActive:
        return 'assets/pngs/ic_profile_active.png';
      case IconPaths.icLogo:
        return 'assets/pngs/ic_logo.png';
      case IconPaths.icSearch:
        return 'assets/svgs/ic_search.svg';
    }
  }
}
