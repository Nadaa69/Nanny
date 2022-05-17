import 'package:flutter/material.dart';
import 'package:nanny/colors/color.dart';
import 'package:nanny/screens/choose.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        color: Colors.white38,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/white.png',
                    fit: BoxFit.fill,
                    scale: 1.6,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, bottom: 0, right: 30, top: 5),
                child: Text(
                  'Get BabySitter in Instant',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '''Users have the liberty to choose the type of babysitters as per their need. ''',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[500],
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600),
              ),
              Image.network(
                'https://img.freepik.com/free-vector/babysitter-nanny-holding-baby-playing-with-kids_566040-357.jpg',
              ),
              SizedBox(height: 30),
              Container(
                color: Colors.white,
                height: 50,
                width: 250,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Choose()),
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Lets get a babysiiter',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        size: 33,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
