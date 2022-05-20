enum ApiConstants { baseUrl, apiKey }

extension ApiConstantsExtension on ApiConstants {
  String str() {
    switch (this) {
      case ApiConstants.baseUrl:
        return 'https://newsapi.org/v2/';
      case ApiConstants.apiKey:
        return '0323c903c6444c5898939a0866c14572';
    }
  }
}
