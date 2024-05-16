import 'package:flutter/material.dart';
import 'package:laboratorymodule/bottomnavigation.dart';

class testdescription extends StatelessWidget {
  final String userName;
  final int age;
  final String gender;
  final String dateofTest;
  final List<String> test;

  const testdescription(
      {required this.userName,
        required this.age,
        required this.gender,
        required this.dateofTest,
        required this.test,
        super.key});

//haseeb

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.only(left: 9.0), // Adjust the padding here
          child: CircleAvatar(
            radius: 20, // Adjust the size here
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
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.only(top: 0),
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
                                      width: 380,
                                      height: 650,
                                      margin: const EdgeInsets.only(top: 10),
                                      decoration: BoxDecoration(
                                        color:
                                        const Color.fromRGBO(141, 219, 242, 1),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.8),
                                            offset: const Offset(1, 1),
                                            blurRadius: 2,
                                            spreadRadius: 0.2,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 160,
                                      height: 35,
                                      margin:
                                      const EdgeInsets.fromLTRB(25, 30, 0, 0),
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
                                      width: 320,
                                      height: 180,
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.only(left: 10),
                                      margin:
                                      const EdgeInsets.fromLTRB(25, 85, 0, 0),
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
                                            "Name :\t\t\t\t\t\t\t\t\t\t\t\t\t\t ${userName}",
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
                                      const EdgeInsets.fromLTRB(25, 290, 0, 0),
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
                                      width: 320,
                                      height: 280,
                                      margin:
                                      const EdgeInsets.fromLTRB(25, 350, 0, 0),
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
      bottomNavigationBar: BottomNavigation(userName: userName),
    );
  }
}