import 'package:flutter/material.dart';
import 'package:laboratorymodule/apifunctions.dart';
import 'package:laboratorymodule/bottomnavigation.dart';
import 'package:laboratorymodule/tests.dart';
import 'package:laboratorymodule/viewreport.dart';
import 'package:laboratorymodule/HomePage.dart';

class Dashboard extends StatelessWidget {
  final String userName;
  final String email;
  final String gender;
  final int age;
  final String shifttiming;
  final String workingdays;
  final int laboratorist_ID;

  const Dashboard({
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 9.0),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/avatarfemale.png'),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              patient00();
            },
            icon: Image.asset(
              'assets/images/heart.png',
              width: 40,
              height: 40,
            ),
            iconSize: 40,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'WELCOME BACK!',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontFamily: 'Poppins',
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 5.0,
                    color: Color.fromARGB(190, 0, 0, 0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2),
            Text(
              '$userName!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontFamily: 'Poppins',
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 5.0,
                    color: Color.fromARGB(190, 0, 0, 0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Stack(
              children: [
                // New Positioned widget for the Image.asset

                Image.asset(
                  'assets/images/dashboard.png', // Replace with your image path
                  width: 900,
                  height: 600,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 215,
                  left: 50,
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          // Add your onPressed logic here
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => tests(
                                    userName: userName,
                                    email: email,
                                    gender: gender,
                                    age: age,
                                    shifttiming: shifttiming,
                                    workingdays: workingdays,
                                    laboratorist_ID: laboratorist_ID),
                              ));
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          padding: MaterialStateProperty.all(EdgeInsets.zero),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          'View Tests',
                          style: TextStyle(
                            color: Color(0xFF573926), // Orange color
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 110),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => viewreport(
                                      userName: userName,
                                      email: email,
                                      gender: gender,
                                      age: age,
                                      shifttiming: shifttiming,
                                      workingdays: workingdays,
                                      laboratorist_ID: laboratorist_ID,
                                    )),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          padding: MaterialStateProperty.all(EdgeInsets.zero),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          'View Reports',
                          style: TextStyle(
                            color: Color(0xFF573926), // Orange color
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 440,
                  left: 190,
                  child: Image.asset(
                    'assets/images/chatbot.png', // Replace with your image path
                    width: 200,
                    height: 175,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 445,
                  left: 200,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                      // Add your onPressed logic here
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      'Chat Now!',
                      style: TextStyle(
                        color: Colors.white, // Orange color
                        fontSize: 21,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: Colors.black.withOpacity(0.5),
                            offset: Offset(2.0, 2.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // New Positioned widget for the TextButton
              ],
            ),
          ],
        ),
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
