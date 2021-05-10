import 'package:flutter/material.dart';
import 'package:estaleiro/Constants.dart';

class TextFieldInput extends StatelessWidget {
  final Widget child;

  const TextFieldInput({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: kPrimaryLightColor, borderRadius: BorderRadius.circular(29)),
      child: child,
    );
  }
}
