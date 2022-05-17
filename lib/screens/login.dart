import 'package:flutter/material.dart';

import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:nanny/colors/color.dart';
import 'package:nanny/screens/home.dart';
import 'package:nanny/screens/signup.dart';

// ignore_for_file: prefer_const_constructors
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: pinkcolor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: ListView(
          children: [
            Column(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/pink.png',
                      scale: 0.1,
                      height: 250,
                    ),
                    Text(
                      "Hello !",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: const EdgeInsets.all(27.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2.0),
                                borderRadius: BorderRadius.circular(30)),
                            hintText: 'Email',
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2.0),
                                borderRadius: BorderRadius.circular(30)),
                            hintText: 'Password',
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    padding: EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border(
                            bottom: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black))),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: pinkcolor),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SignInButton(Buttons.Google, onPressed: () {}),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignInButton(Buttons.Email, mini: true, onPressed: () {}),
                    SignInButton(
                      Buttons.Facebook,
                      mini: true,
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont have an account?"),
                    TextButton(
                        child: Text(
                          'Signup',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: TextButton.styleFrom(
                            textStyle: TextStyle(fontSize: 20)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupPage()));
                        })
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget makeInput({label, obsureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      SizedBox(
        height: 5,
      ),
      SizedBox(
        height: 30,
      )
    ],
  );
}
