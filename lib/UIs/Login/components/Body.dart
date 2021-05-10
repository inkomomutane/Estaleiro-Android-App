import 'package:estaleiro/Api/AuthClientApi.dart';
import 'package:estaleiro/Auth/Auth.dart';
import 'package:estaleiro/Constants.dart';
import 'package:estaleiro/UIs/GlobalWidgets/RaisedMailInput.dart';
import 'package:estaleiro/UIs/GlobalWidgets/RaisedPasswordField.dart';
import 'package:estaleiro/UIs/GlobalWidgets/RaisedTextInput.dart';
import 'package:estaleiro/UIs/GlobalWidgets/TextFieldInput.dart';
import 'package:estaleiro/UIs/GlobalWidgets/RaisedCostumeButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Background.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var map = {'email': '', 'password': ''};

    return Form(
        key: _formKey,
        child: Background(
          size,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'LOGIN',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    color: Colors.white,
                    fontFamily: 'ubuntu'),
              ),
              SvgPicture.asset(
                'images/login.svg',
                height: size.height * 0.2,
              ),
              SizedBox(height: size.height * 0.03),
              TextFieldInput(
                child: RaisedMailInput(
                  icon: Icon(Icons.mail),
                  color: kPrimaryLightColor,
                  hintText: "Insira seu email",
                  value: (value) {
                    map['email'] = value;
                  },
                ),
              ),
              SizedBox(height: size.height * 0.03),
              TextFieldInput(
                child: RaisedPasswordField(
                  icon: Icon(Icons.lock),
                  color: kPrimaryLightColor,
                  hintText: "Insira sua senha",
                  value: (value) {
                    map['password'] = value;
                  },
                  nullable: true,
                  suffixIcon: Icon(Icons.visibility),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              RaisedCostumeButton(
                  size, "LOGIN", Color(0xFFFCE0a2), Colors.black, () async {
                if (_formKey.currentState!.validate()) {
                  print(map);
                  AuthClientApi auth = AuthClientApi();
                  var sol = await auth.login(map['email']!, map['password']!);
                  print("");
                  if (sol != null) {
                    Auth aux = Auth.fromJson(sol);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content:
                          Text('Usuario ${aux.user!.name} logado com sucesso'),
                      backgroundColor: Colors.green,
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Usuario nao encontrado!'),
                      backgroundColor: Colors.red,
                    ));
                  }
                }
              }),
            ],
          ),
        ));
  }
}
