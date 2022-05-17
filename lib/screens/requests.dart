import 'package:flutter/material.dart';
import 'package:nanny/colors/color.dart';

// ignore_for_file: prefer_const_constructors
// ignore: use_key_in_widget_constructors
class RequestPage extends StatefulWidget {
  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: pinkcolor,
        title: Text('Nanny Requests'),
      ),
    );
  }
}
