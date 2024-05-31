import 'dart:convert';

import 'package:http/http.dart' as http;

//HELPER METHOD TO MAKE A GET REQUEST
class THttpHelper {
  static const String _baseurl = 'https://Your-api-base-url.com';
  static Future<Map<String, dynamic>> get(String endPoint) async {
    final response = await http.get(Uri.parse('$_baseurl/$endPoint'));
    return _handleResponse(response);
  }

//HELPER METHOD TO MAKE A POST REQUEST
  static Future<Map<String, dynamic>> post(
      String endPoint, dynamic data) async {
    final response = await http.post(Uri.parse('$_baseurl/$endPoint'),
        headers: {'Content-Type': 'application/json'}, body: json.encode(data));
    return _handleResponse(response);
  }

//HELPER METHOD TO MAKE A PUT REQUEST
  static Future<Map<String, dynamic>> put(String endPoint, dynamic data) async {
    final response = await http.put(Uri.parse('$_baseurl/$endPoint'),
        headers: {'Content-Type': 'application/json'}, body: json.encode(data));
    return _handleResponse(response);
  }

//HELPER METHOD TO MAKE A DELETE REQUEST
  static Future<Map<String, dynamic>> delete(String endPoint) async {
    final response = await http.delete(Uri.parse('$_baseurl/$endPoint'));
    return _handleResponse(response);
  }

//HANDLE THE HTTP RESPONSE
  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data ${response.statusCode}');
    }
  }
}
