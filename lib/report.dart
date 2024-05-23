import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:laboratorymodule/dashboard.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:laboratorymodule/apifunctions.dart';
import 'package:laboratorymodule/viewreport.dart';

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
                  patientGender,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 9,
                  ),
                ),
                SizedBox(width: 115),
                Text(
                  '',
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
                  patientAge,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 9,
                  ),
                ),
                SizedBox(width: 163),
                Text(
                  patientContact,
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
              refBy,
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
              Child1,
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
              Child2,
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
              Child3,
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
              testName,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: 100,
            top: 235,
            child: Row(
              children: [
                Container(
                  width:104,
                  //color: Colors.blue,
                  child: Text(
                    patientName,

                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 9,
                     // color: Colors.pinkAccent,
                    ),
                  ),
                ),
                SizedBox(width: 43),
                Text(
                  reportId.toString(),
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 9,
                  //  color: Colors.pink
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
                Container(
                  width: 122,
                //  color: Colors.yellow,
                  child: Text(
                    patientGender,

                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 9,
                      //color: Colors.pinkAccent
                    ),
                  ),
                ),
                SizedBox(width: 30),
                Text(
                  testDate,
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
                  patientAge,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 9,
                  ),
                ),
                SizedBox(width: 163),
                Text(
                  patientContact,
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
                          Component1,
                          style: TextStyle(fontSize: 9.0), // Adjust font size for row 1
                        ),
                        SizedBox(height: 30),
                        Text(
                          Component2,
                          style: TextStyle(fontSize: 9.0), // Adjust font size for row 2
                        ),
                        SizedBox(height: 30),
                        Text(
                          Component3,

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
                          Result1,
                          style: TextStyle(fontSize: 9.0), // Adjust font size for row 1
                        ),
                        SizedBox(height: 30),
                        Text(
                          Result2,
                          style: TextStyle(fontSize: 9.0), // Adjust font size for row 2
                        ),
                        SizedBox(height: 30),
                        Text(
                          Result3,
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
                          Unit1,
                          style: TextStyle(fontSize: 9.0), // Adjust font size for row 1
                        ),
                        SizedBox(height: 30),
                        Text(
                          Unit2,
                          style: TextStyle(fontSize: 9.0), // Adjust font size for row 2
                        ),
                        SizedBox(height: 30),
                        Text(
                          Unit3,
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
                          Adult1,
                          style: TextStyle(fontSize: 7.0), // Adjust font size for row 1
                        ),
                        SizedBox(height: 25),
                        Text(
                          Adult2,
                          style: TextStyle(fontSize: 7.0), // Adjust font size for row 2
                        ),
                        SizedBox(height: 27),
                        Text(
                          Adult3,
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