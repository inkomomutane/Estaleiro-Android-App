import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFF19429);
const kPrimaryLightColor = Color(0xFFFCECCB);
   bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 800;
  
   bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 800 &&
      MediaQuery.of(context).size.width < 1200;
  
   bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;
  
