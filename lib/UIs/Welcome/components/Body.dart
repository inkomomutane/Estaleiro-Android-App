import 'package:estaleiro/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:estaleiro/Routes/Routes.dart';

import 'Background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      size,
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'BEM VINDO',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                color: Colors.white,
                fontFamily: 'ubuntu'),
          ),
          SvgPicture.asset(
            'images/welcome.svg',
            height: size.height * 0.4,
          ),
          SizedBox(height: size.height * 0.03),
          RaisedButton(size, "LOGIN", Color(0xFFFCE0a2), Colors.black,
          AppRoutes.USER_LOGIN),
          SizedBox(height: size.height * 0.03),
          RaisedButton(size, "REGISTAR", Color(0xFFE2F2F3), Colors.black,
              AppRoutes.USER_LOGIN)
        ],
      ),
    );
  }
}

class RaisedButton extends StatelessWidget {
  final Size size;
  final String text;
  final Color color;
  final Color textColor;
  final String route;
  RaisedButton(this.size, this.text, this.color, this.textColor, this.route);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: ElevatedButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 20, horizontal: 40)),
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) return color;
                return color; // Defer to the widget's default.
              }),
              foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) return textColor;
                return textColor; // Defer to the widget's default.
              }),
              elevation: MaterialStateProperty.resolveWith((states) => 0)),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed(this.route);
          },
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
