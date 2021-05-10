import 'package:flutter/material.dart';

class RaisedPasswordField extends StatelessWidget {
  final String hintText;
  final Icon icon;
  final Icon suffixIcon;
  final Color color;
  final bool nullable;
  final bool oscure = true;
  final ValueChanged<String> value;
  final RegExp? rules;

  const RaisedPasswordField(
      {Key? key,
      required this.hintText,
      required this.icon,
      required this.color,
      required this.value,
      required this.nullable,
      this.rules,
      required this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // bool visible = true;
    return TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        icon: icon,
        suffixIcon: Icon(Icons.visibility_off),
        fillColor: color,
        hintText: hintText,
      ),
      obscureText: true,
      onChanged: value,
      validator: (value) {
        if (!nullable) {
          if (value == null || value.isEmpty) {
            return 'Campo obrigatorio';
          }
        }
      },
    );
  }
}
