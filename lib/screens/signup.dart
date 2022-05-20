// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:nanny/colors/color.dart';
import 'package:nanny/screens/login.dart';

// ignore_for_file: prefer_const_constructors
class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pinkcolor,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: ListView(
            children: [
              Image.asset(
                'assets/pink.png',
                height: 250,
              ),
              SizedBox(
                height: 1,
              ),
              Column(
                children: [
                  _Textfield(label: 'Name', ico: Icons.person, password: false),
                  SizedBox(
                    height: 10,
                  ),
                  _Textfield(label: 'Email', ico: Icons.email, password: false),
                  SizedBox(
                    height: 10,
                  ),
                  _Textfield(
                      label: 'Password', ico: Icons.lock, password: true),
                  SizedBox(
                    height: 10,
                  ),
                  _Textfield(
                      label: 'Confirm Password',
                      ico: Icons.lock,
                      password: true),
                  SizedBox(height: 10),
                  _Textfield(
                      label: 'Mobile Number',
                      ico: Icons.phone,
                      password: false),
                  SizedBox(
                    height: 10,
                  ),
                  _Textfield(
                      label: 'Address',
                      ico: Icons.location_city,
                      password: false),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {},
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: primarycolor),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: primarycolor),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _Textfield({label, password = false, ico}) {
  return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: TextFormField(
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(30)),
            hintText: label,
            prefixIcon: Icon(
              ico,
              color: Colors.white,
            )),
        obscureText: password,
      ));
}
