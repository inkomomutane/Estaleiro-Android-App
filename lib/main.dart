
import 'package:estaleiro/Auth/Auth.dart';
import 'package:flutter/cupertino.dart';
import 'Api/AuthClientApi.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AuthClientApi? auth = new AuthClientApi();
  Map<String, dynamic>? response = await auth.login(
      'sembas@gmail.tt', 'password');
  Auth? userAuthenticated = (response!=null?Auth.fromJson(response):null);
  if(userAuthenticated!=null){
      print(userAuthenticated.user!.toJson());
  }
}
