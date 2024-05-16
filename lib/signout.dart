import 'package:flutter/material.dart';
import 'package:laboratorymodule/bottomnavigation.dart';


class signout extends StatelessWidget {
  final String userName;
  final String email;
  final int age;
  final String gender;
  final String workingdays;
  final String shifttimmming;


  const signout({Key? key, required this.userName,
    required this.email,
    required this.age,
    required this.gender,
    required this.workingdays,
    required this.shifttimmming,}) : super(key: key);


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
                              height: 200,
                              width: 200,
                              'assets/images/Group 85.png',
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
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(40, 0, 0, 215),
                          child: Text(
                            "\n$email",
                            style: TextStyle(fontFamily: 'Poppins'),
                          )),
                      Container(
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            Text(
                                "\n\nGender :\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t $gender",
                                style: const TextStyle(fontFamily: 'Poppins',fontSize: 20)),
                            Text(
                                "\n\n\n\nAge :\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t $age",
                                style: const TextStyle(fontFamily: 'Poppins')),
                            Text(
                                "\n\n\n\n\n\nShift Timmings :\t\t\t $shifttimmming",
                                style: const TextStyle(fontFamily: 'Poppins')),
                            Text(
                                "\n\n\n\n\n\n\n\nWorking Days :\t\t\t\t $workingdays",
                                style: const TextStyle(fontFamily: 'Poppins')),
                          ],
                        ),
                      ),
                      Container(
                          alignment: Alignment.bottomCenter,
                          padding: const EdgeInsets.fromLTRB(60, 0, 0, 150),
                          child: Stack(
                            children: [
                              Image.asset(
                                height: 30,
                                width: 30,
                                'assets/images/logout.png',
                                fit: BoxFit.cover,
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 35),
                                  child: const Text(
                                    "SignOut",
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 127, 255, 1),
                                        fontFamily: 'Rubik',
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(userName: userName),
    );
  }
}
