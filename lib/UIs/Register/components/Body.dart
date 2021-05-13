import 'package:estaleiro/Api/AuthClientApi.dart';
import 'package:estaleiro/Auth/Auth.dart';
import 'package:estaleiro/Constants.dart';
import 'package:estaleiro/Controllers/SecureStorage.dart';
import 'package:estaleiro/Routes/Routes.dart';
import 'package:estaleiro/UIs/GlobalWidgets/RaisedMailInput.dart';
import 'package:estaleiro/UIs/GlobalWidgets/RaisedPasswordField.dart';
import 'package:estaleiro/UIs/GlobalWidgets/RaisedTextInput.dart';
import 'package:estaleiro/UIs/GlobalWidgets/TextFieldInput.dart';
import 'package:estaleiro/UIs/GlobalWidgets/RaisedCostumeButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

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
    Map<String, String> map = {
      'name': '',
      'email': '',
      'password': '',
      'password_confirmation': '',
      'role_id': '3'
    };

    return Form(
        key: _formKey,
        child: Background(
            size,
            ListView(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: size.height * 0.08),
                  Text(
                    'REGISTAR',
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
                    child: RaisedTextInput(
                      icon: Icon(Icons.person),
                      color: kPrimaryLightColor,
                      hintText: "Insira seu nome",
                      value: (value) {
                        map['name'] = value;
                      },
                      nullable: false,
                    ),
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
                      nullable: false,
                      suffixIcon: Icon(Icons.visibility),
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  TextFieldInput(
                    child: RaisedPasswordField(
                      icon: Icon(Icons.lock),
                      color: kPrimaryLightColor,
                      hintText: "Confirme sua senha.",
                      value: (value) {
                        map['password_confirmation'] = value;
                      },
                      nullable: false,
                      suffixIcon: Icon(Icons.visibility),
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  RaisedCostumeButton(
                      size, "REGISTAR", Color(0xFFFCE0a2), Colors.black,
                      () async {
                    if (_formKey.currentState!.validate()) {
                      print(map);
                      AuthClientApi auth = AuthClientApi();
                      var sol = await auth.signup(
                          map['name']!,
                          map['email']!,
                          map['password']!,
                          map['password_confirmation']!,
                          map['role_id']!);

                      if (sol != null) {
                        Auth aux = Auth.fromJson(sol);
                        final secureStorage =
                            Provider.of<SecureStorage>(context, listen: false);
                        secureStorage.writeSecureData(
                            'token', aux.accessToken!);
                        secureStorage.writeSecureData('name', aux.user!.name!);
                        secureStorage.writeSecureData(
                            'email', aux.user!.email!);
                        ScaffoldMessenger.of(context)
                            .showSnackBar(ResponseSnackbar(
                          text: 'Usuario ${aux.user!.name} logado com sucesso!',
                          backgroundColor: Colors.green,
                        ));
                        Navigator.of(context).pop();
                        Navigator.of(context).pushNamed(AppRoutes.DASHBOARD);
                      } else {
                        print('error');
                        ScaffoldMessenger.of(context)
                            .showSnackBar(ResponseSnackbar(
                          text: 'Usuario nao encontrado!',
                          backgroundColor: Colors.red,
                        ));
                      }
                    }
                  }),
                ],
              ),
            ])));
  }
}

// ignore: non_constant_identifier_names
SnackBar ResponseSnackbar(
    {required String text, required Color backgroundColor}) {
  return SnackBar(
    content: Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.bold, fontFamily: 'ubuntu', fontSize: 15.0),
    ),
    elevation: 8,
    backgroundColor: backgroundColor,
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
  );
}