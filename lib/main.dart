import 'package:estaleiro/Controllers/UsersClient.dart';
import 'package:estaleiro/Routes/Routes.dart';
//import 'package:estaleiro/UIs/Login/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Constants.dart';
import 'Controllers/SecureStorage.dart';
import 'UIs/Dashboard/Admin/Dash.dart';
import 'UIs/Dashboard/Dashboard.dart';
import 'UIs/Login/LoginScreen.dart';
import 'UIs/Register/RegisterScreen.dart';
import 'UIs/Welcome/Welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
     providers: [
        ChangeNotifierProvider<SecureStorage>(create: (context)=> SecureStorage()),
        ChangeNotifierProvider<UsersClient>(create: (context) => UsersClient()),
      ],
    child:   MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Estaleiro App',
      theme: ThemeData(
          primaryColor: kPrimaryColor, scaffoldBackgroundColor: Colors.white),
      routes: {
        AppRoutes.HOME: (_) => Welcome(),
        AppRoutes.USER_LOGIN: (_) => Login(),
        AppRoutes.DASHBOARD: (_) => Dash(),
        AppRoutes.USER_SIGNUP: (_) => Register()
      },
    ));
  }
}
