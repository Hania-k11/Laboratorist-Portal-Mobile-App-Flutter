import 'package:flutter/material.dart';

class signout extends StatelessWidget {
  const signout({super.key});

//simra

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 360,
        height: 800,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 240,
              left: 115,
              child: Text(
                'haniakhan@gmail.com',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 200,
              left: 85,
              child: Text(
                'Hania Khan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Poppins',
                  fontSize: 40,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
            ),
            Positioned(
                top: 497,
                left: 153,
                child: Text(
                  'Sign Out',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 127, 255, 1),
                      fontFamily: 'Lato',
                      fontSize: 30,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold,
                      height: 1),
                )),
            Positioned(
                top: 350,
                left: 32,
                child: Text(
                  'Shift Timmings:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1),
                )),
            Positioned(
                top: 300,
                left: 32,
                child: Text(
                  'Gender:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1),
                )),
            Positioned(
                top: 300,
                left: 190,
                child: Text(
                  'Female',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1),
                )),
            Positioned(
                top: 325,
                left: 32,
                child: Text(
                  'Age:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1),
                )),
            Positioned(
                top: 325,
                left: 190,
                child: Text(
                  '21',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1),
                )),
            Positioned(
                top: 375,
                left: 32,
                child: Text(
                  'Working days:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1),
                )),
            Positioned(
                top: 350,
                left: 190,
                child: Text(
                  '9am-5pm',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1),
                )),
            Positioned(
                top: 375,
                left: 190,
                child: Text(
                  'Monday-Thursday',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1),
                )),
            Positioned(
                top: 50,
                left: 110,
                child: Container(
                  child: Image.asset(
                      height: 150, width: 150, 'assets/images/avatarfemale.png'),
                )),
            Positioned(
                top: 485,
                left: 100,
                child: Container(
                  child: Image.asset(
                      height: 50, width: 50, 'assets/images/logout.png'),
                ))
          ],
        ),
      ),
    );
  }
}
