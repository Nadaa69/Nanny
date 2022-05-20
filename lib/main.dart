import 'package:flutter/material.dart';
import 'package:nanny/colors/color.dart';
import 'package:nanny/screens/choose.dart';
import 'package:nanny/screens/home.dart';
import 'package:nanny/screens/login.dart';
import 'package:nanny/screens/profile.dart';
import 'package:nanny/screens/security.dart';

import 'package:nanny/screens/welcome.dart';
import 'package:nanny/screens/signup.dart';

import 'colors/color.dart';

// ignore_for_file: prefer_const_constructors
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SignupPage();
  }
}
