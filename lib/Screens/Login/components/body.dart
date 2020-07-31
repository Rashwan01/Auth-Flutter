import 'package:blog/constants.dart';
import 'package:flutter/material.dart';
import 'background.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../Welcome/components/rounedButton.dart';
import '../../../components/already_have_account_check.dart';
import '../../Register/register_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "LOGIN",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: size.height * 0.03),
        SvgPicture.asset(
          "assets/icons/login.svg",
          height: size.height * 0.35,
        ),
        SizedBox(height: size.height * 0.03),
        RoundedInputField(
          hintText: "Your Email",
          onChanged: (value) {},
        ),
        RoundedPasswordField(
          onChanged: (value) {},
        ),
        RoundedButton(
          text: "Login",
          press: () {},
        ),
        SizedBox(height: size.height * 0.03),
        AlreadyHaveAccountCheck(
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterScreen()),
            );
          },
        )
      ],
    ));
  }
}
