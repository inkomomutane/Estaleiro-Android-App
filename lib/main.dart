import 'package:estaleiro/Constants.dart';
import 'package:estaleiro/Controllers/InvoiceClient.dart';
import 'package:estaleiro/Controllers/MaterialsClient.dart';
import 'package:estaleiro/Controllers/SecureStorage.dart';
import 'package:estaleiro/Controllers/UsersClient.dart';
import 'package:estaleiro/Routes/Routes.dart';
import 'package:estaleiro/UIs/Dashboard/Dash.dart';
import 'package:estaleiro/UIs/Login/LoginScreen.dart';
import 'package:estaleiro/UIs/Materials/MaterialScreen.dart';
import 'package:estaleiro/UIs/Register/RegisterScreen.dart';
import 'package:estaleiro/UIs/Welcome/Welcome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<SecureStorage>(
              create: (context) => SecureStorage()),
          ChangeNotifierProvider<UsersClient>(
              create: (context) => UsersClient()),
          ChangeNotifierProvider<MaterialsClient>(
              create: (context) => MaterialsClient()),
              ChangeNotifierProvider< InvoiceClient>(create: (context) => InvoiceClient())
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Estaleiro App',
          theme: ThemeData(
              primaryColor: kPrimaryColor,
              scaffoldBackgroundColor: Colors.white),
          initialRoute: '/',
          routes: {
              '/': (context) => Welcome(),
            '/login': (context) => Login(),
            '/register': (context) => Register(),
            '/dashboard': (context) => Dash(),
            '/material': (context) => MaterialScreen(),
          },
        ));
  }
}
