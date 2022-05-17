import 'package:flutter/material.dart';
import 'package:nanny/colors/color.dart';
import 'package:image_picker/image_picker.dart';

// ignore_for_file: prefer_const_constructors
class ProfileUpdate extends StatefulWidget {
  @override
  State<ProfileUpdate> createState() => _ProfileUpdateState();
}

class _ProfileUpdateState extends State<ProfileUpdate> {
  final picker = ImagePicker();
  late Future<PickedFile?> pickedFile = Future.value(null);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(fontSize: 22),
        ),
        backgroundColor: pinkcolor,
        actions: [IconButton(icon: Icon(Icons.person_pin), onPressed: () {})],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                Text(
                  'Edit profile',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                            border: Border.all(width: 3),
                            color: Theme.of(context).scaffoldBackgroundColor,
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(0, 10)),
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://as1.ftcdn.net/v2/jpg/03/53/11/00/1000_F_353110097_nbpmfn9iHlxef4EDIhXB1tdTD0lcWhG9.jpg'))),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: pinkcolor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.edit),
                              color: Colors.white,
                              onPressed: () async {
                                pickedFile = picker
                                    .getImage(source: ImageSource.gallery)
                                    .whenComplete(() => {setState(() {})});
                              },
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                BuildText('Full Name', 'David Alex', false),
                BuildText('EMAIL', 'David.alex@gmail.com', false),
                BuildText('PASSWORD', '**********', true),
                BuildText('PHONE NUMBER', '01234549893', false),
                BuildText('ADDRESS', 'Maadi ,street_151', false),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 11),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 135,
                        child: TextButton(
                          child: Text(
                            'Save',
                            style: TextStyle(
                                color: pinkcolor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {},
                        ),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(25)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 50,
                        width: 135,
                        child: TextButton(
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20),
                          ),
                          onPressed: () {},
                        ),
                        decoration: BoxDecoration(
                            color: pinkcolor,
                            borderRadius: BorderRadius.circular(25)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding BuildText(String labelText, String placeholder, bool IsPasswordText) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        obscureText: IsPasswordText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            labelStyle: TextStyle(fontSize: 17),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
                color: blackColor, fontWeight: FontWeight.bold, fontSize: 20)),
      ),
    );
  }
}
