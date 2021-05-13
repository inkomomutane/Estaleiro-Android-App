import 'dart:convert';
import 'package:http/http.dart' as http;

class ClientApi {
  final String baseUrl = "http://192.168.56.1:8000/api/";

  Future<List<Map<String, dynamic>?>?> all(String url, String? token) async {
    var uri = Uri.parse(baseUrl + url);
    var headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token'
    };
    var response = await http.get(uri, headers: headers);
    switch (response.statusCode) {
      case 422:
        return null;
      case 401:
        return null;
      case 200:
        //uhodkiewicz@example.net
        var data = json.decode(response.body);
        var b = List.generate(
            data.length, (index) => data[index] as Map<String, dynamic>);

            print(b);
        return b;
      default:
        return null;
    }
  }

  Future<Map<String, dynamic>?> create(
      String url, String? token, Map<String, dynamic> body) async {
    var uri = Uri.parse(baseUrl + url);
    var headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token'
    };
    var response = await http.post(uri, headers: headers, body: body);
    switch (response.statusCode) {
      case 422:
        return null;
      case 401:
        return null;
      case 201:
        return json.decode(response.body);
      default:
        return null;
    }
  }

  Future<Map<String, dynamic>?> update(
      String url, String? token, Map<String, dynamic> body) async {
    var uri = Uri.parse(baseUrl + url);
    body.addAll({'method': '_put'});
    var headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token'
    };
    var response = await http.post(uri, headers: headers, body: body);
    switch (response.statusCode) {
      case 422:
        return null;
      case 401:
        return null;
      case 200:
        return json.decode(response.body);
      default:
        return null;
    }
  }

  Future<Map<String, dynamic>?> get(String url, String? token) async {
    var uri = Uri.parse(baseUrl + url);
    var headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token'
    };
    var response = await http.get(uri, headers: headers);
    switch (response.statusCode) {
      case 422:
        return null;
      case 401:
        return null;
      case 200:
        return json.decode(response.body);
      default:
        return null;
    }
  }

  Future<bool> delete(
      String url, String? token, Map<String, dynamic> body) async {
    var uri = Uri.parse(baseUrl + url);
    var headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token'
    };
    var response = await http.delete(uri, headers: headers, body: body);
    switch (response.statusCode) {
      case 422:
        return false;
      case 401:
        return false;
      case 200:
        return true;
      default:
        return false;
    }
  }
}
