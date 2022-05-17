import 'package:flutter/material.dart';
import 'package:nanny/colors/color.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore_for_file: prefer_const_constructors
class Security extends StatefulWidget {
  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: pinkcolor,
              title: Text(
                'Security',
                style: TextStyle(fontSize: 22),
              ),
              actions: [
                IconButton(icon: Icon(Icons.security), onPressed: () {})
              ],
            ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn1.iconfinder.com/data/icons/office-flat-circle-vol-3/100/lock__safe__security__password_-512.png'),
                      radius: 120,
                      backgroundColor: blackColor,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'We can help you with ',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                    SizedBox(
                      height: 55,
                    ),
                    TextButton.icon(
                        label: Text(
                          'Call The Police',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        icon: Icon(
                          Icons.logout,
                          size: 30,
                          color: Colors.white,
                        ),
                        style: TextButton.styleFrom(backgroundColor: pinkcolor),
                        onPressed: () {
                          launch("tel:122");
                        }),
                    SizedBox(
                      height: 30,
                    ),
                    TextButton.icon(
                        label: Text(
                          'Call The Ambulance',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        icon: Icon(
                          Icons.logout,
                          size: 30,
                          color: Colors.white,
                        ),
                        style: TextButton.styleFrom(backgroundColor: pinkcolor),
                        onPressed: () {
                          launch("tel:123");
                        }),
                  ],
                ),
              ),
            )));
  }
}
