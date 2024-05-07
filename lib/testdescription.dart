import 'package:flutter/material.dart';
import 'package:laboratorymodule/bottomnavigation.dart';

class testdescription extends StatelessWidget {
  final String name;
  final int age;
  final String gender;
  final String dateofTest;
  final List<String> test;
  const testdescription(
      {required this.name,
        required this.age,
        required this.gender,
        required this.dateofTest,
        required this.test,
        super.key});

//haseeb

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 125, 0, 0),
                        child: Image.asset(
                          height: 50,
                          width: 50,
                          'assets/images/Group 85.png',
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(300, 100, 0, 0),
                        child: Image.asset(
                          height: 100,
                          width: 100,
                          'assets/images/heart.png',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.only(top: 200),
              child: const Text(
                "Thyroid Function Tests (TFTs)",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Rubik',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: Stack(
                      children: [
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 300,
                                      height: 480,
                                      margin: const EdgeInsets.only(top: 130),
                                      decoration: BoxDecoration(
                                        color:
                                        const Color.fromRGBO(141, 219, 242, 1),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.8),
                                            offset: const Offset(1, 1),
                                            blurRadius: 12,
                                            spreadRadius: -12,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 160,
                                      height: 35,
                                      margin:
                                      const EdgeInsets.fromLTRB(25, 140, 0, 0),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color:
                                        const Color.fromRGBO(230, 230, 230, 1),
                                        borderRadius: BorderRadius.circular(0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.8),
                                            offset: const Offset(1, 1),
                                            blurRadius: 2,
                                            spreadRadius: 0.5,
                                          ),
                                        ],
                                      ),
                                      child: const Text(
                                        'Patient Information:',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 250,
                                      height: 150,
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.only(left: 10),
                                      margin:
                                      const EdgeInsets.fromLTRB(25, 188, 0, 0),
                                      decoration: BoxDecoration(
                                        color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                        borderRadius: BorderRadius.circular(0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.8),
                                            offset: const Offset(1, 1),
                                            blurRadius: 2,
                                            spreadRadius: 0.5,
                                          ),
                                        ],
                                      ),
                                      child: Stack(
                                        children: [
                                          Text(
                                            "Name :\t\t\t\t\t\t\t\t\t\t\t\t\t\t ${name}",
                                            style: const TextStyle(
                                                fontFamily: 'Poppins'),
                                          ),
                                          Text(
                                              "\n\nAge :\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t ${age}",
                                              style: const TextStyle(
                                                  fontFamily: 'Poppins')),
                                          Text(
                                              "\n\n\n\nGender :\t\t\t\t\t\t\t\t\t\t\t\t\t ${gender}",
                                              style: const TextStyle(
                                                  fontFamily: 'Poppins')),
                                          Text(
                                              "\n\n\n\n\n\nDate Of Test :\t\t\t ${dateofTest}",
                                              style: const TextStyle(
                                                  fontFamily: 'Poppins')),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 160,
                                      height: 35,
                                      margin:
                                      const EdgeInsets.fromLTRB(25, 350, 0, 0),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color:
                                        const Color.fromRGBO(230, 230, 230, 1),
                                        borderRadius: BorderRadius.circular(0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.8),
                                            offset: const Offset(1, 1),
                                            blurRadius: 2,
                                            spreadRadius: 0.5,
                                          ),
                                        ],
                                      ),
                                      child: const Text(
                                        'Test Components:',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 250,
                                      height: 170,
                                      margin:
                                      const EdgeInsets.fromLTRB(25, 400, 0, 0),
                                      decoration: BoxDecoration(
                                        color:
                                        const Color.fromRGBO(255, 254, 254, 1),
                                        borderRadius: BorderRadius.circular(0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.8),
                                            offset: const Offset(1, 1),
                                            blurRadius: 2,
                                            spreadRadius: 0.5,
                                          ),
                                        ],
                                      ),
                                      child: ListView.builder(
                                          padding: const EdgeInsets.all(8),
                                          itemCount: test.length,
                                          itemBuilder:
                                              (BuildContext context, int index) {
                                            return Text(
                                              "${test[index]}\n",
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins'),
                                            );
                                          }),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomnavigation(),
    );
  }
}