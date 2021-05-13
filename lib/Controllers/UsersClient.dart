import 'package:estaleiro/Api/ClientApi.dart';
import 'package:estaleiro/Controllers/SecureStorage.dart';
import 'package:estaleiro/Models/User.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UsersClient extends ClientApi with ChangeNotifier {
  Future<List<User>?>? users(String token) async {
    final data = await this.all('users', token);
    if (data == null) {
      return <User>[];
    }
    return List<User>.generate(
        data.length, (index) => User.fromJson(data[index]!));
  }

  Future<User?> getUser(String id, String token) async {
    final user = await this.get('users/' + id, token);
    print(user);
    if (user != null) return User.fromJson(user);
    return null;
  }
}
