// ignore: unused_import
import 'dart:convert';
import 'package:estaleiro/Models/User.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'ClientApi.dart';

class AuthClientApi extends ClientApi with ChangeNotifier {
  Future<Map<String, dynamic>?> login(String email, String password) async {
    var uri = Uri.parse(baseUrl + 'login');
    var headers = {
      'Accept': 'application/json',
    };
    try {
      var response = await http.post(uri,
          headers: headers, body: {'email': email, 'password': password});
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
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<Map<String, dynamic>?> signup(String name, String email,
      String password, String confirmationPassword, String roleId) async {
    var uri = Uri.parse(baseUrl + 'signup');
    var headers = {
      'Accept': 'application/json',
    };
    try {
      var response = await http.post(uri, headers: headers, body: {
        'name': name,
        'email': email,
        'password': password,
        'password_confirmation': confirmationPassword,
        'role_id': roleId
      });
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
    } catch (e) {
      print(e);
      return null;
    }
  }

   Future<List<User>?>? users(BuildContext context) async {
    final data = await this.all('users', context);
    if (data == null) {
      return <User>[];
    }
    return List<User>.generate(
        data.length, (index) => User.fromJson(data[index]!));
  }

  Future<User?> getUser(String id, BuildContext context) async {
    final user = await this.get('users/' + id, context);
    print(user);
    if (user != null) return User.fromJson(user);
    return null;
  }
}
