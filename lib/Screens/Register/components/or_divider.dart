import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'build_divider.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.8,
        margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
        child: Row(
          children: <Widget>[
            BuildDivider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text("OR",
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.w900)),
            ),
            BuildDivider(),
          ],
        ));
  }
}
