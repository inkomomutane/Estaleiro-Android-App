import 'package:flutter/material.dart';

class RaisedTextInput extends StatelessWidget {
  final String hintText;
  final Icon icon;
  final Color color;
  final bool nullable;
  final ValueChanged<String> value;
  final RegExp? rules;

  const RaisedTextInput(
      {Key? key,
      required this.hintText,
      required this.icon,
      required this.color,
      required this.value,
      required this.nullable,
      this.rules})
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
        if (!nullable) {
          if (value == null || value.isEmpty) {
            return 'Campo obrigatorio';
          }
        }
      },
    );
  }
}
