import 'package:blog/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/background.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../Welcome/components/rounedButton.dart';
import '../../../components/already_have_account_check.dart';
import '../../Login/login_screen.dart';
import '../components/or_divider.dart';
import '../components/social_icon.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "SIGN UP",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: size.height * 0.03),
        SvgPicture.asset(
          "assets/icons/signup.svg",
          height: size.height * 0.35,
        ),
        SizedBox(height: size.height * 0.03),
        RoundedInputField(
          hintText: "Your Name",
          onChanged: (value) {},
        ),
        RoundedInputField(
          icon: Icons.email,
          hintText: "Your Email",
          onChanged: (value) {},
        ),
        RoundedPasswordField(onChanged: (value) {}),
        RoundedButton(
          text: "Sign Up",
          press: () {},
        ),
        SizedBox(height: size.height * 0.03),
        AlreadyHaveAccountCheck(
          isLogin: false,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
        ),
        OrDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SocialIcon(
              iconSrc: "facebook.svg",
              press: () {},
            ),
            SocialIcon(
              iconSrc: "google-plus.svg",
              press: () {},
            ),
            SocialIcon(
              iconSrc: "twitter.svg",
              press: () {},
            ),
          ],
        )
      ],
    ));
  }
}
