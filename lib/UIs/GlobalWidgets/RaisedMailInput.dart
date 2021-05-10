import 'package:flutter/material.dart';

class RaisedMailInput extends StatelessWidget {
  final String hintText;
  final Icon icon;
  final Color color;
  final ValueChanged<String> value;

  const RaisedMailInput(
      {Key? key,
      required this.hintText,
      required this.icon,
      required this.color,
      required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        icon: icon,
        fillColor: color,
        hintText: hintText,
      ),
      onChanged: value,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Campo obrigatorio';
        } else if (!RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value)) {
          return 'Por favor insira um email valido.';
        }
      },
    );
  }
}


/******************************
if (value == null || value.isEmpty) {
          return 'Campo obrigatorio';
        } else if (!RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value)) {
         
        }*/