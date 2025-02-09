import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:blog/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color colour, textColor;
  final Function press;
  const RoundedButton(
      {this.text,
      this.press,
      this.colour = kPrimaryColor,
      this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          color: colour,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
