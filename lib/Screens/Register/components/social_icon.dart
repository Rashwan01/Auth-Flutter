import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:blog/constants.dart';

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;
  const SocialIcon({this.iconSrc, this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: kPrimaryLightColor, width: 1),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          "assets/icons/$iconSrc",
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
