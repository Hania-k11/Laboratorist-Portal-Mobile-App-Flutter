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
            child: Image.asset(
              'assets/images/Group 89.png ',
              fit: BoxFit.contain,
              height: MediaQuery.of(context).size.height * 0.8, // Adjust the size of the image
            ),
          ),
          Positioned(
            left: 100,
            top: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Zainab Rauf'),
                    SizedBox(width: 10),
                    Text('729200'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('Female'),
                    SizedBox(width: 10),
                    Text('07/07/2024'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('20'),
                    SizedBox(width: 10),
                    Text('686868'),
                  ],
                ),
                SizedBox(height: 10),
                Text('Dr. Farheen'),
              ],
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