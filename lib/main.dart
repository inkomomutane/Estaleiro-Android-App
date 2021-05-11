import 'package:estaleiro/Routes/Routes.dart';
//import 'package:estaleiro/UIs/Login/LoginScreen.dart';
import 'package:flutter/material.dart';

import 'Constants.dart';
import 'UIs/Dashboard/Dashboard.dart';
import 'UIs/Login/LoginScreen.dart';
import 'UIs/Welcome/Welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome',
      theme: ThemeData(
          primaryColor: kPrimaryColor, scaffoldBackgroundColor: Colors.white),
      routes: {
        AppRoutes.HOME: (_) => Welcome(),
        AppRoutes.USER_LOGIN: (_) => Login(),
        AppRoutes.DASHBOARD: (_) => Dashboard(),
      },
    );
  }
}
