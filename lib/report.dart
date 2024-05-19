import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:laboratorymodule/dashboard.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:laboratorymodule/apifunctions.dart';

import 'apifunctions.dart';
import 'bottomnavigation.dart';


class report extends StatelessWidget {
  final String userName;
  final String email;
  final String gender;
  final int age;
  final String shifttiming;
  final String workingdays;
  final int laboratorist_ID;
   report({
    Key? key,
     required this.userName,
     required this.age,
     required this.email,
     required this.gender,
     required this.shifttiming,
     required this.workingdays,
     required this.laboratorist_ID,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              alignment: Alignment.center,
              height: 580, // Adjusted height for Pixel 7 screen
              width: 590,  // Adju/ Adjusts the width to 80% of the screen width
              child: Image.asset(
                'assets/images/report1.png',
                fit: BoxFit.contain,  // Ensures the image is contained within the given dimensions
              ),
            ),
          ),

          SizedBox(height: 10),
          Positioned(
            left: 79,
            top: 248,
            child: Row(
              children: [
                Text(
                  'Female',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 9,
                  ),
                ),
                SizedBox(width: 115),
                Text(
                  '2023-06-16',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 9,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),

          SizedBox(height: 10),
          Positioned(
            left: 67,
            top: 262,
            child: Row(
              children: [
                Text(
                  '20',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 9,
                  ),
                ),
                SizedBox(width: 163),
                Text(
                  '0309289302',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 9,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Positioned(
            left: 75,
            top: 275,
            child:Text(
              'Dr. Adams',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 9,
              ),
            ),
          ),
          SizedBox(height: 10),
          Positioned(
            left: 302,
            top: 372,
            child:Text(
              '11.0-11.0',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 7,
              ),
            ),
          ),
          SizedBox(height: 20),
          Positioned(
            left: 302,
            top: 410,
            child:Text(
              '12.0-13.0',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 7,
              ),
            ),
          ),
          SizedBox(height: 20),
          Positioned(
            left: 302,
            top: 444,
            child:Text(
              '13.0-13.0',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 7,
              ),
            ),
          ),
          SizedBox(height: 100),
          Positioned(
            left: 48,
            top: 315,
            child:Text(
              'Thyroid Test',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: 105,
            top: 235,
            child: Row(
              children: [
                Text(
                  'Zainab Rauf',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 9,
                  ),
                ),
                SizedBox(width: 82),
                Text(
                  '201',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 9,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Positioned(
            left: 79,
            top: 248,
            child: Row(
              children: [
                Text(
                  'Female',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 9,
                  ),
                ),
                SizedBox(width: 115),
                Text(
                  '2023-06-16',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 9,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Positioned(
            left: 67,
            top: 262,
            child: Row(
              children: [
                Text(
                  '20',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 9,
                  ),
                ),
                SizedBox(width: 163),
                Text(
                  '0309289302',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 9,
                  ),
                ),
              ],
            ),
          ),
    Padding(
    padding: const EdgeInsets.all(45.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
    Container(
    width: 65,
    margin: EdgeInsets.only(right: 5),
    child: Column(
      children: <Widget>[
        SizedBox(height: 325),
        Text(
          'BUN',
          style: TextStyle(fontSize: 9.0), // Adjust font size for row 1
        ),
        SizedBox(height: 30),
        Text(
          'Creatinine',
          style: TextStyle(fontSize: 9.0), // Adjust font size for row 2
        ),
        SizedBox(height: 30),
        Text(
          'GFR',
          style: TextStyle(fontSize: 9.0), // Adjust font size for row 3
        ),
      ],
    ),
    ),
      SizedBox(width: 30),
    Container(
    width: 40,
    margin: EdgeInsets.only(right: 10),
    child: Column(
      children: <Widget>[
        SizedBox(height: 325),
        Text(
          '1.5',
          style: TextStyle(fontSize: 9.0), // Adjust font size for row 1
        ),
        SizedBox(height: 30),
        Text(
          '0.6',
          style: TextStyle(fontSize: 9.0), // Adjust font size for row 2
        ),
        SizedBox(height: 30),
        Text(
          '10.1',
          style: TextStyle(fontSize: 9.0), // Adjust font size for row 3
        ),
      ],
    ),
    ),
      SizedBox(width:10 ),

      Container(
        width: 40,
        margin: EdgeInsets.only(right: 10),
        child: Column(
          children: <Widget>[
            SizedBox(height: 325),
            Text(
              'ug/ml',
              style: TextStyle(fontSize: 9.0), // Adjust font size for row 1
            ),
            SizedBox(height: 30),
            Text(
              'mm/bn',
              style: TextStyle(fontSize: 9.0), // Adjust font size for row 2
            ),
            SizedBox(height: 30),
            Text(
              'mm/cl',
              style: TextStyle(fontSize: 9.0), // Adjust font size for row 3
            ),
          ],
        ),
      ),
      SizedBox(width:24),

      Container(
        width: 29,
        margin: EdgeInsets.only(right: 10),
        child: Column(
          children: <Widget>[
            SizedBox(height: 347),
            Text(
              '0.3-9.0',
              style: TextStyle(fontSize: 7.0), // Adjust font size for row 1
            ),
            SizedBox(height: 25),
            Text(
              '10.0-8.9',
              style: TextStyle(fontSize: 7.0), // Adjust font size for row 2
            ),
            SizedBox(height: 27),
            Text(
              '2.0-9.0',
              style: TextStyle(fontSize: 7.0), // Adjust font size for row 3
            ),
          ],
        ),
      ),
      SizedBox(width:10 ),


  ]

    ),
    ),

        ],
      ),

      bottomNavigationBar: BottomNavigation(
        userName: userName,
        email: email,
        gender: gender,
        age: age,
        shifttiming: shifttiming,
        workingdays: workingdays,
        laboratorist_ID: laboratorist_ID,
      ),
    );
  }
}
