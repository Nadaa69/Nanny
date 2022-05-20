// ignore: file_names
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nanny/colors/color.dart';
import 'package:nanny/screens/profile.dart';
import 'package:nanny/screens/requests.dart';
import 'package:nanny/screens/security.dart';
import 'package:nanny/screens/signup.dart';

// ignore_for_file: prefer_const_constructors
class Choose extends StatefulWidget {
  @override
  _ChooseState createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  var myMarkers = HashSet<Marker>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: pinkcolor),
              accountName: Text('david '),
              accountEmail: Text('david@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    'https://as1.ftcdn.net/v2/jpg/03/53/11/00/1000_F_353110097_nbpmfn9iHlxef4EDIhXB1tdTD0lcWhG9.jpg'),
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Profile'),
              trailing: Icon(
                Icons.person,
              ),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileUpdate())),
            ),
            Divider(),
            ListTile(
              title: Text('Requests'),
              trailing: Icon(
                Icons.settings,
              ),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RequestPage())),
            ),
            Divider(),
            ListTile(
                title: Text('Safety'),
                trailing: Icon(Icons.security),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Security()))),
            Divider(),
            ListTile(
              title: Text('Close'),
              trailing: Icon(
                Icons.close,
              ),
              onTap: () => Navigator.of(context).pop(),
            ),
            Divider(),
            ListTile(
              title: Text('Sign Out'),
              trailing: Icon(Icons.logout),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignupPage())),
            ),
          ],
        )),
        appBar: AppBar(
          backgroundColor: pinkcolor,
        ),
        body: ListView(children: [
          Center(
            heightFactor: 1,
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      ' Choose Your ',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 6),
                    ),
                    Text(
                      'BabySitter',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: pinkcolor),
                    ),
                    details(
                        name: 'Anna Oscar',
                        age: '24',
                        experience: '1 Year',
                        gender: 'Female',
                        mobile: '01223647824',
                        photo:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSskJLDHmog5f4tWr28Odt1yilXTC9K0IdUXfBjJwbq08zUxwUt_RFbAnul6I0rowKuNns&usqp=CAU',
                        price: '360 per day'),
                    details(
                        name: 'Emily Edward',
                        age: '29',
                        experience: '5 Year',
                        gender: 'Female',
                        mobile: '01223645455',
                        photo:
                            'https://pf1.childcare.co.uk/5/fea5e/e9e32362.thumbnail.png',
                        price: '200 per day'),
                    details(
                        name: 'Olivia James',
                        age: '30',
                        experience: '9 Year',
                        gender: 'Female',
                        mobile: '01055647824',
                        photo:
                            'https://media.cnn.com/api/v1/images/stellar/prod/190612160112-marly-higgins-driskell.jpg?q=w_3000,h_2000,x_0,y_0,c_fill',
                        price: '400 LE per day'),
                    details(
                        name: 'Emily Edward',
                        age: '29',
                        experience: '5 Year',
                        gender: 'Male',
                        mobile: '01558747800',
                        photo:
                            'https://pf1.childcare.co.uk/5/fea5e/e9e32362.thumbnail.png',
                        price: '200 per day'),
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}

Widget details({
  mobile,
  name,
  age,
  gender,
  experience,
  price,
  photo,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 15),
      Container(
        height: 236,
        width: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.grey[300]),
        child: Stack(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: pinkcolor,
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        photo,
                      ))),
            ),
            Positioned(
              top: 110,
              child: Row(
                children: const [
                  Icon(
                    Icons.location_on_rounded,
                  ),
                  Text(
                    'NasrCity',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Positioned(
              left: 112,
              top: 12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Age: $age',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: blackColor)),
                  SizedBox(height: 6),
                  Text('Gender: $gender',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: blackColor)),
                  SizedBox(height: 6),
                  Text('Experience: $experience',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: blackColor)),
                  SizedBox(height: 6),
                  Text('Price: $price',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: blackColor)),
                  SizedBox(height: 6),
                  Text('PhoneNumber: $mobile',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: blackColor)),
                  SizedBox(
                    height: 5,
                  ),
                  Builder(builder: (context) {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          primary: pinkcolor,
                          textStyle: TextStyle(fontWeight: FontWeight.bold)),
                      child: Text(
                        'REQUEST',
                        style: TextStyle(fontSize: 16),
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          duration: Duration(seconds: 2),
                          content: Text('Successful Request',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          backgroundColor: pinkcolor,
                        ));
                      },
                    );
                  })
                ],
              ),
            )
          ],
        ),
      ),
    ],
  );
}
