import 'package:flutter/material.dart';
import 'package:laboratorymodule/apifunctions.dart';
import 'package:laboratorymodule/bottomnavigation.dart';
import 'package:laboratorymodule/tests.dart';
import 'package:laboratorymodule/viewreport.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key});

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
            onPressed: () {},
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
              'Hania',
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
                            MaterialPageRoute(builder: (context) => tests()),
                          );
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

                          fetch();
                         // fetch_login();


                          // Add your onPressed logic here
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => viewreport()),
                          // );
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
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomnavigation(),
    );
  }
}
