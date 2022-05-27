import 'package:easy_localization/easy_localization.dart';

import '../generated/locale_keys.g.dart';

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
        return LocaleKeys.business.tr();

      case NewsCategories.entertainment:
        return LocaleKeys.entertainment.tr();

      case NewsCategories.general:
        return LocaleKeys.general.tr();

      case NewsCategories.health:
        return LocaleKeys.health.tr();

      case NewsCategories.science:
        return LocaleKeys.science.tr();

      case NewsCategories.sports:
        return LocaleKeys.sport.tr();

      case NewsCategories.technology:
        return LocaleKeys.tech.tr();
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
