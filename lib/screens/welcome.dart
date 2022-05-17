import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nanny/colors/color.dart';
import 'package:nanny/screens/signup.dart';

// ignore_for_file: prefer_const_constructors
class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignupPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  'assets/pink.png',
                  scale: 3.2,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'NannY',
              style: TextStyle(
                  color: primarycolor,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
