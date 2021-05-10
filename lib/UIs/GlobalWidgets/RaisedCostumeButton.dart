import 'package:flutter/material.dart';

class RaisedCostumeButton extends StatelessWidget {
  final Size size;
  final String text;
  final Color color;
  final Color textColor;
  final void Function() press;

  RaisedCostumeButton(
      this.size, this.text, this.color, this.textColor, this.press);
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
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

 
}
