import 'package:blog/Screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import './Screens/Welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Auth",
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: Welcome(),
    );
  }
}
