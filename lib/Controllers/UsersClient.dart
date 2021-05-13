import 'package:estaleiro/Api/ClientApi.dart';
import 'package:estaleiro/Controllers/SecureStorage.dart';
import 'package:estaleiro/Models/User.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UsersClient extends ClientApi with ChangeNotifier {
  Future<List<User>>? users(String token) async {
    final data = await this.all('/users', token);
    return  List.generate(data!.length, (index) => User.fromJson(data));
  }
}
