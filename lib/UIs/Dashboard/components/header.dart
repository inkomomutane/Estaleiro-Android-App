import 'package:estaleiro/UIs/GlobalWidgets/constants.dart';
import 'package:estaleiro/UIs/GlobalWidgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: Icon(Icons.menu, color: Colors.black, size: 30.0),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        if (!Responsive.isMobile(context))
          Text(
            "Dashboard",
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        Expanded(
            child: Text(
          'Dashboard',
          style: TextStyle(
              color: primaryColor,
              fontFamily: 'ubuntu',
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
        )),
        SearchField(),
        ProfileCard()
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: 2,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icons/user.svg",
            height: 38,
          ),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(defaultPadding * 0.75),
        margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Icon(Icons.search, color: Colors.black),
      ),
    );
  }
}
