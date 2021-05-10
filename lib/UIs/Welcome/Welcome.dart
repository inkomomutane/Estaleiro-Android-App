import 'package:estaleiro/UIs/Welcome/components/Body.dart';
import 'package:flutter/material.dart';

class  Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      backgroundColor: Color(0xFFF19429),
    );
  }
}