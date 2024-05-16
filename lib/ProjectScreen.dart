

import 'package:flutter/material.dart';
import 'package:laboratorymodule/Login.dart';
import 'package:laboratorymodule/apifunctions.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({Key? key});

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
              margin: EdgeInsets.only(bottom: 320), // Adjusted to move the button up
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5), // Shadow color
                    spreadRadius: 2, // Spread radius
                    blurRadius: 2, // Blur radius
                    offset: Offset(0, 3), // Offset
                  ),
                ],
                borderRadius: BorderRadius.circular(8.0),
              ),


              //BUTTTONNNNNNNNNNNNNNNNN!!!!!!!!!!!!!!

              child: TextButton(
                onPressed: () {
                //  get_labo();
                //  fetchy();
                  //fetch();
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()), // Navigate to Login screen
                 );
                //   Functionality here
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                  child: Text(
                    'Login as Laboratorist',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontFamily: 'Epilogue', // Font family
                      fontWeight: FontWeight.bold, // Bold font weight
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
