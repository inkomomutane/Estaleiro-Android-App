import 'package:estaleiro/UIs/Dashboard/Admin/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);
/**child: , */
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        // it enables scrolling
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: primaryColor,
                  image: DecorationImage(
                      image: AssetImage('assets/icons/welcome.png'),
                      fit: BoxFit.contain)),
              accountEmail: Text('Estaleiro App',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'ubuntu',
                      fontWeight: FontWeight.bold)),
              accountName: Text(''),
            ),
            DrawerListTile(
              title: "Dashbord",
              svgSrc: "assets/icons/Dashbord.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Vendas",
              svgSrc: "assets/icons/Vendas.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Faturas",
              svgSrc: "assets/icons/Faturas.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Projectos",
              svgSrc: "assets/icons/Projectos.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Materias",
              svgSrc: "assets/icons/Materias.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Caixa",
              svgSrc: "assets/icons/Caixa.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Relatorios",
              svgSrc: "assets/icons/Relatorios.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Usuarios",
              svgSrc: "assets/icons/Usuarios.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Sair",
              svgSrc: "assets/icons/Sair.svg",
              press: () {
                SystemNavigator.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        alignment: Alignment.centerLeft,
        //color: Colors.black,
        height: 50,
        //width: 60,
      ),
      title: Text(
        '   $title',
        style: TextStyle(color: Colors.black, fontSize: 18),
        textAlign: TextAlign.left,
        softWrap: true,
      ),
    );
  }
}
