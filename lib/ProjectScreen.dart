// ignore: file_names
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:laboratorymodule/login.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  //askari
  //screen 1
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/Screen1.png',
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter, // Keeps the button at the bottom center
            child: Container(
              margin: EdgeInsets.fromLTRB(30, 50, 50, 260), // Adjusted to move the button up
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const login()), // Navigate to Login screen
                  );
                  // Functionality here
                },
                child: Text(
                  'Login as Laboratorist',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}


