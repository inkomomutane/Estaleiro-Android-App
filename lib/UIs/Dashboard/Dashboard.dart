import 'package:estaleiro/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE2F2F3),
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Dashboard'),
      ),
      body: Row(
        children: [Expanded(child: Container())],
      ),
    );
  }
}
