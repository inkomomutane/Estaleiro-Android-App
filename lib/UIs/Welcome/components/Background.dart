import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Size size;
  final Widget child;
  Background(this.size, this.child);

  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'assets/images/main_top.png',
                width: size.width * 0.2,
              )),
          Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset('assets/images/main_bottom.png',
                  width: size.width * 0.1)),
          child,
        ],
      ),
    );
  }
}
