import 'package:flutter/material.dart';
import 'text_field_container.dart';
import 'package:blog/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            icon: Icon(Icons.lock, color: kPrimaryColor),
            hintText: "Your Password",
            border: InputBorder.none,
            suffixIcon: Icon(Icons.visibility, color: kPrimaryColor)),
      ),
    );
  }
}
