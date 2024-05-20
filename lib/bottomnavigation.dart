import 'package:flutter/material.dart';
import 'package:laboratorymodule/dashboard.dart';
import 'package:laboratorymodule/signout.dart';
import 'package:laboratorymodule/tests.dart';
import 'package:laboratorymodule/viewreport.dart';

import 'apifunctions.dart';

class BottomNavigation extends StatelessWidget {
  final String userName;
  final String email;
  final String gender;
  final int age;
  final String shifttiming;
  final String workingdays;
  final int laboratorist_ID;


  const BottomNavigation({Key? key, required this.userName,
  required this.age,
    required this.email,
    required this.gender,
    required this.shifttiming,
    required this.workingdays,
    required this.laboratorist_ID,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      bottom: 0,
      child: Container(
        width: 420,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFF007FFF),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              offset: Offset(0, 4),
              blurRadius: 4,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildIconButton(() {
              Navigator.push(
                context,
                  MaterialPageRoute(
                  builder: (context) => Dashboard(userName: userName, email: email, gender: gender,
                      age: age, shifttiming: shifttiming, workingdays: workingdays, laboratorist_ID: laboratorist_ID,
               )),

              );
            }, 'assets/images/homeicon.png'),
            _buildIconButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => tests(userName: userName, email: email, gender: gender,
                    age: age, shifttiming: shifttiming, workingdays: workingdays, laboratorist_ID: laboratorist_ID),)

              );
            }, 'assets/images/testicon.png'),
            _buildIconButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => viewreport(userName: userName, email: email, gender: gender,
                    age: age, shifttiming: shifttiming, workingdays: workingdays, laboratorist_ID:laboratorist_ID,

                )),
              );
            }, 'assets/images/reporticon.png'),
            _buildIconButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => signout
                        (userName: userName, email: email, gender: gender,
                        age: age, shifttiming: shifttiming, workingdays: workingdays,laboratorist_ID: laboratorist_ID )),
              );
            }, 'assets/images/profileicon.png'),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(Function() onPressed, String imagePath) {
    return IconButton(
      onPressed: onPressed,
      icon: Image.asset(
        imagePath,
        width: 30,
        height: 25,
      ),
    );
  }
}
