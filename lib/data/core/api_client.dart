import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

import 'api_constants.dart';

class ApiClient {
  final Client _client;

  ApiClient(this._client);

  dynamic get(String path, {Map<dynamic, dynamic>? params}) async {
    final response = await _client.get(
      getPath(path, params),
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

  Uri getPath(String path, Map? params) {
    var paramsString = '';
    if (params?.isNotEmpty ?? false) {
      params!.forEach((key, value) {
        paramsString += '&$key=$value';
      });
    }
    return Uri.parse(
        '${ApiConstants.baseUrl.str()}${path}country=tr&apiKey=${ApiConstants.apiKey.str()}$paramsString');
  }
}
