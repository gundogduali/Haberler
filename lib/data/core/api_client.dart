import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

import 'api_constants.dart';

class ApiClient {
  final Client _client;

  ApiClient(this._client);

  dynamic get(String path) async {
    Uri url = Uri.parse(
        '${ApiConstants.baseUrl.str()}${path}country=tr&apiKey=${ApiConstants.apiKey.str()}');
    final response = await _client.get(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == HttpStatus.ok) {
      return json.decode(response.body);
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
