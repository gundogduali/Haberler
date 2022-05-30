enum NewsCategories {
  business,
  entertainment,
  general,
  health,
  science,
  sport,
  technology
}

extension NewsCategoriesExtension on NewsCategories {
  String path() {
    switch (this) {
      case NewsCategories.business:
        return 'assets/pngs/bg_business.png';

      case NewsCategories.entertainment:
        return 'assets/pngs/bg_entertainment.png';

      case NewsCategories.general:
        return 'assets/pngs/bg_general.png';

      case NewsCategories.health:
        return 'assets/pngs/bg_health.png';

      case NewsCategories.science:
        return 'assets/pngs/bg_science.png';

      case NewsCategories.sport:
        return 'assets/pngs/bg_sports.png';

      case NewsCategories.technology:
        return 'assets/pngs/bg_technology.png';
    }
  }
}
