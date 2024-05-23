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
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Profile',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 105, // Adjust the size as needed
                backgroundImage: AssetImage('assets/images/pro1.png'),
              ),
              SizedBox(height: 5),
              Text(
                userName,
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                email,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gender:\t\t\t\t\ $gender",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Age:\t\t\t\t\ $age",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Shift Timings: \t\t\ $shifttiming",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Working Days:  $workingdays",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProjectScreen()),
                  );
                  // Add onPressed functionality here
                },
                child: Image.asset(
                  'assets/images/signout1.png', // Replace with your image asset
                  height: 100, // Adjust the size as needed
                  width: 150,  // Adjust the size as needed
                ),
              ),
            ],
          ),
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