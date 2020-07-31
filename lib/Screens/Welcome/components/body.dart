import 'package:blog/Screens/Register/register_screen.dart';
import 'package:blog/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'background.dart';
import 'rounedButton.dart';
import "../../Login/login_screen.dart";

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "WELCOME TO EDU",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: size.height * 0.5,
          ),
          SizedBox(height: size.height * 0.03),
          RoundedButton(
            text: "Login",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          ),
          RoundedButton(
            text: "Register",
            colour: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()));
            },
          )
        ],
      ),
    );
  }
}
