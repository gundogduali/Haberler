enum BnvIconPaths {
  icHome,
  icHomeActive,
  icGenres,
  icGenresActive,
  icProfile,
  icProfileActive
}

extension IconPathsExtension on BnvIconPaths {
  String str() {
    switch (this) {
      case BnvIconPaths.icHome:
        return 'assets/pngs/ic_home.png';
      case BnvIconPaths.icHomeActive:
        return 'assets/pngs/ic_home_active.png';
      case BnvIconPaths.icGenres:
        return 'assets/pngs/ic_genres.png';
      case BnvIconPaths.icGenresActive:
        return 'assets/pngs/ic_genres_active.png';
      case BnvIconPaths.icProfile:
        return 'assets/pngs/ic_profile.png';
      case BnvIconPaths.icProfileActive:
        return 'assets/pngs/ic_profile_active.png';
    }
  }
}
