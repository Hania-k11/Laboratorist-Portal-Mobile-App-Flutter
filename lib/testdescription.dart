import 'package:flutter/material.dart';
import 'package:laboratorymodule/bottomnavigation.dart';

class testdescription extends StatelessWidget {
  const testdescription({super.key});

//haseeb

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            child: Center(
              child: Stack(
                children: <Widget>[
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        child: CircleAvatar(
                          backgroundImage:
                          AssetImage('assets/images/avatarfemale.png'),
                        ),
                      )),
                  Positioned(
                      top: 0,
                      left: 250,
                      child: Container(
                        child: Image.asset(
                            height: 90, width: 120, 'assets/images/heart.png'),
                      )),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              width: 299,
              height: 469,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                      top: 27,
                      left: 0,
                      child: Container(
                          width: 299,
                          height: 442,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(141, 219, 242, 1),
                            borderRadius: BorderRadius.circular(0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.8),
                                offset: Offset(1, 1),
                                blurRadius: 2,
                                spreadRadius: 0.5,
                              ),
                            ],
                          ))),
                  Positioned(
                      top: 81,
                      left: 13,
                      child: Container(
                          width: 272,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ))),
                  Positioned(
                      top: 244,
                      left: 18,
                      child: Container(
                          width: 267,
                          height: 131,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.8),
                                offset: Offset(1, 1),
                                blurRadius: 1,
                                spreadRadius: 0.5,
                              ),
                            ],
                          ))),
                  Positioned(
                      top: 244,
                      left: 18,
                      child: Container(
                          width: 267,
                          height: 131,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.8),
                                offset: Offset(1, 1),
                                blurRadius: 2,
                                spreadRadius: 0.5,
                              ),
                            ],
                          ))),
                  Positioned(
                      top: 80,
                      left: 13,
                      child: Container(
                          width: 275,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.8),
                                offset: Offset(1, 1),
                                blurRadius: 2,
                                spreadRadius: 0.5,
                              ),
                            ],
                          ))),
                  Positioned(
                      top: 115,
                      left: 93,
                      child: Text(
                        '21',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.8),
                      )),
                  Positioned(
                      top: 0,
                      left: 44,
                      child: Text(
                        'Thyroid Function Tests (TFTs)',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(87, 57, 38, 1),
                            fontFamily: 'Rubik',
                            fontSize: 15,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.2),
                      )),
                  Positioned(
                      top: 39,
                      left: 13,
                      child: Container(
                          width: 117,
                          height: 25,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  offset: Offset(0, 4),
                                  blurRadius: 4)
                            ],
                            color: Color.fromRGBO(217, 217, 217, 1),
                            border: Border.all(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              width: 1,
                            ),
                          ))),
                  Positioned(
                      top: 42,
                      left: 18,
                      child: Text(
                        'Patient Information:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Poppins',
                            fontSize: 11,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.6363636363636365),
                      )),
                  Positioned(
                      top: 201,
                      left: 18,
                      child: Container(
                          width: 117,
                          height: 25,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  offset: Offset(0, 4),
                                  blurRadius: 4)
                            ],
                            color: Color.fromRGBO(217, 217, 217, 1),
                            border: Border.all(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              width: 1,
                            ),
                          ))),
                  Positioned(
                      top: 204,
                      left: 23,
                      child: Text(
                        'Test Components:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Poppins',
                            fontSize: 11,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.6363636363636365),
                      )),
                  Positioned(
                      top: 90,
                      left: 22,
                      child: Text(
                        'Name:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Poppins',
                            fontSize: 11,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.6363636363636365),
                      )),
                  Positioned(
                      top: 114,
                      left: 22,
                      child: Text(
                        'Age:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.8),
                      )),
                  Positioned(
                      top: 138,
                      left: 22,
                      child: Text(
                        'Gender:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.8),
                      )),
                  Positioned(
                      top: 162,
                      left: 22,
                      child: Text(
                        'Date of test:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.8),
                      )),
                  Positioned(
                      top: 250,
                      left: 22,
                      child: Text(
                        'Thyroid-Stimulating Hormone (TSH)',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.8),
                      )),
                  Positioned(
                      top: 273,
                      left: 23,
                      child: Text(
                        'Thyroxine (T4)',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.8),
                      )),
                  Positioned(
                      top: 89,
                      left: 90,
                      child: Text(
                        'Zainab Rauf',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.8),
                      )),
                  Positioned(
                      top: 138,
                      left: 94,
                      child: Text(
                        'Female',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.8),
                      )),
                  Positioned(
                      top: 162,
                      left: 90,
                      child: Text(
                        '  23-03-2024',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.8),
                      )),
                  Positioned(
                      top: 346,
                      left: 24,
                      child: Text(
                        'Thyroglobulin Antibodies (TgAb)',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.8),
                      )),
                  Positioned(
                      top: 321,
                      left: 24,
                      child: Text(
                        'Thyroid Peroxidase Antibodies (TPOAb)',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.8),
                      )),
                  Positioned(
                      top: 297,
                      left: 24,
                      child: Text(
                        'Triiodothyronine (T3)',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.8),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottomnavigation(),
    );
  }
}
