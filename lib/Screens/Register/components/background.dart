import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset("assets/images/signup_top.png",
                  width: size.width * 0.35),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset("assets/images/main_bottom.png",
                  width: size.width * 0.2),
            ),
            child
          ],
        ),
      ),
    );
  }
}
