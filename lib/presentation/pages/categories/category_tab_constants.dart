part of 'categories_screen.dart';

class CategoryTabConstants {
  static List<CategoryTab> categoryTabs = [
    CategoryTab(
        category: NewsCategories.business,
        title: NewsCategories.business.name,
        imagePath: NewsCategories.business.path()),
    CategoryTab(
        category: NewsCategories.health,
        title: NewsCategories.health.name,
        imagePath: NewsCategories.health.path()),
    CategoryTab(
        category: NewsCategories.entertainment,
        title: NewsCategories.entertainment.name,
        imagePath: NewsCategories.entertainment.path()),
    CategoryTab(
        category: NewsCategories.general,
        title: NewsCategories.general.name,
        imagePath: NewsCategories.general.path()),
    CategoryTab(
        category: NewsCategories.science,
        title: NewsCategories.science.name,
        imagePath: NewsCategories.science.path()),
    CategoryTab(
        category: NewsCategories.sport,
        title: NewsCategories.sport.name,
        imagePath: NewsCategories.sport.path()),
    CategoryTab(
        category: NewsCategories.technology,
        title: NewsCategories.technology.name,
        imagePath: NewsCategories.technology.path()),
  ];
}
