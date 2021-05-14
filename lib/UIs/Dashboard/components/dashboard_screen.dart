import 'package:estaleiro/UIs/Dashboard/components/header.dart';
import 'package:estaleiro/UIs/Dashboard/components/my_fiels.dart';
import 'package:estaleiro/UIs/Dashboard/components/storage_details.dart';
import 'package:estaleiro/UIs/GlobalWidgets/constants.dart';
import 'package:estaleiro/UIs/GlobalWidgets/responsive.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            //AppBar(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiels(),
                      //if (Responsive.isMobile(context))
                      // SizedBox(height: defaultPadding),
                      //  if (Responsive.isMobile(context)) StarageDetails(),
                    ],
                  ),
                ),
                // if (!Responsive.isMobile(context))
                //   SizedBox(width: defaultPadding),
                // On Mobile means if the screen is less than 850 we dont want to show it
                //  if (!Responsive.isMobile(context))
                //   Expanded(
                //   flex: 2,
                //   child: StarageDetails(),
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
