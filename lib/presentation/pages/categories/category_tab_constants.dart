
part of 'categories_screen.dart';

class CategoryTabConstants {
  static  List<CategoryTab> categoryTabs =  [
     CategoryTab(category: NewsCategories.business, title: NewsCategories.business.title(), imagePath: NewsCategories.business.path()),
     CategoryTab(category: NewsCategories.health, title: NewsCategories.health.title(), imagePath: NewsCategories.health.path()),
     CategoryTab(category: NewsCategories.entertainment, title: NewsCategories.entertainment.title(), imagePath: NewsCategories.entertainment.path()),
     CategoryTab(category: NewsCategories.general, title: NewsCategories.general.title(), imagePath: NewsCategories.general.path()),
     CategoryTab(category: NewsCategories.science, title: NewsCategories.science.title(), imagePath: NewsCategories.science.path()),
     CategoryTab(category: NewsCategories.sports, title: NewsCategories.sports.title(), imagePath: NewsCategories.sports.path()),
     CategoryTab(category: NewsCategories.technology, title: NewsCategories.technology.title(), imagePath: NewsCategories.technology.path()),
     
  ];
}
