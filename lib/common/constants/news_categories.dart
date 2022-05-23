enum NewsCategories {
  business,
  entertainment,
  general,
  health,
  science,
  sports,
  technology
}

extension NewsCategoriesExtension on NewsCategories {
  String title() {
    switch (this) {
      case NewsCategories.business:
        return 'İş';

      case NewsCategories.entertainment:
        return 'Eğlence';

      case NewsCategories.general:
        return 'Genel';

      case NewsCategories.health:
        return 'Sağlık';

      case NewsCategories.science:
        return 'Bilim';

      case NewsCategories.sports:
        return 'Spor';

      case NewsCategories.technology:
        return 'Teknoloji';
    }
  }

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

      case NewsCategories.sports:
        return 'assets/pngs/bg_sports.png';

      case NewsCategories.technology:
        return 'assets/pngs/bg_technology.png';
    }
  }
}
