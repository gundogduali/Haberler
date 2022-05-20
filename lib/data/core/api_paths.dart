enum ApiPaths {
  getTopHeadlines,
  getByCategory,
}

extension ApiPathsExtension on ApiPaths {
  String str({String? category}) {
    switch (this) {
      case ApiPaths.getTopHeadlines:
        return 'top-headlines?';
      case ApiPaths.getByCategory:
        return 'top-headlines?category=$category&';
    }
  }
}
