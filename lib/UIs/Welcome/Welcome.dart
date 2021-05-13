import 'package:estaleiro/Controllers/SecureStorage.dart';
import 'package:estaleiro/Controllers/UsersClient.dart';
import 'package:estaleiro/UIs/Welcome/components/Body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
   // data.key;
    return Scaffold(
      body: Body(),
      backgroundColor: Color(0xFFF19429),
    );
  }
}
