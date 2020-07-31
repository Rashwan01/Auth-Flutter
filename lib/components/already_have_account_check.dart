import 'package:flutter/material.dart';
import '../constants.dart';

class AlreadyHaveAccountCheck extends StatelessWidget {
  final isLogin;
  final Function press;
  const AlreadyHaveAccountCheck({this.isLogin = true, this.press});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          isLogin ? "Dont have account ?" : "Already Have an Account!",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            isLogin ? "Sign Up" : "Sign In",
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
