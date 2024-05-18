import 'package:flutter/material.dart';
import 'package:laboratorymodule/ProjectScreen.dart';
import 'package:laboratorymodule/bottomnavigation.dart';
import 'package:laboratorymodule/ProjectScreen.dart';
// import your ProjectScreen here

class signout extends StatelessWidget {
  final String userName;
  final String email;
  final int age;
  final String gender;
  final String workingdays;
  final String shifttiming;
  final int laboratorist_ID;

  const signout({
    Key? key,
    required this.userName,
    required this.email,
    required this.age,
    required this.gender,
    required this.workingdays,
    required this.shifttiming,
    required this.laboratorist_ID,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.fromLTRB(25, 90, 0, 0),
                        alignment: Alignment.topCenter,
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/Group 85.png', // Corrected asset path
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.fromLTRB(65, 0, 0, 230),
                        child: Text(
                          "$userName",
                          style: const TextStyle(
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 215),
                        child: Text(
                          "\n\n\t\t\t\t$email",
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            Text(
                              "\n\nGender :\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t $gender",
                              style: const TextStyle(fontFamily: 'Poppins'),
                            ),
                            Text(
                              "\n\n\n\nAge :\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t $age",
                              style: const TextStyle(fontFamily: 'Poppins'),
                            ),
                            Text(
                              "\n\n\n\n\n\nShift Timings :\t\t\t $shifttiming",
                              style: const TextStyle(fontFamily: 'Poppins'),
                            ),
                            Text(
                              "\n\n\n\n\n\n\n\nWorking Days :\t\t\t\t $workingdays",
                              style: const TextStyle(fontFamily: 'Poppins'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        padding: const EdgeInsets.fromLTRB(60, 0, 0, 150),
                        child:  ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue, // Set background color to gray
                            shadowColor: Colors.white, // Set shadow color to white
                            elevation: 7, // Set elevation to 7
                          ),
                          onPressed: () {
                            // Add onPressed functionality here
                          },
                          child: Text('Logout', style: TextStyle(color: Colors.white)), // Set text color to white
                        ),
                      ),
                    ],
                  ),
                ),
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
          laboratorist_ID: laboratorist_ID
      ),
    );
  }
}
