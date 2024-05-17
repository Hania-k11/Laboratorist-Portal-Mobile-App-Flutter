import 'package:flutter/material.dart';
import 'package:laboratorymodule/bottomnavigation.dart';
import 'package:laboratorymodule/report.dart';

class viewreport extends StatelessWidget {
  final String userName;
  final String email;
  final String gender;
  final int age;
  final String shifttiming;
  final String workingdays;

  const viewreport({Key? key, required this.userName,
    required this.age,
    required this.email,
    required this.gender,
    required this.shifttiming,
    required this.workingdays,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _reportId = '';

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: Stack(
          children: [
            Positioned(
              left: 17,
              top: 40,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/avatarfemale.png'),
              ),
            ),
            Positioned(
              right: 3,
              top: 40,
              child: IconButton(
                splashRadius: 35,
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/heart.png',
                  width: 40,
                  height: 40,
                ),
                iconSize: 45,
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 26,
            child: Container(
              width: 412,
              height: 35,
              decoration: BoxDecoration(
                color: const Color(0xFF007FFF),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
                borderRadius: BorderRadius.circular(17.5),
              ),
              child: Center(
                child: Text(
                  "View Patient's Report",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 28,
            top: 123,
            child: Image.asset(
              'assets/images/obj.png.png',
              width: 133,
              height: 166,
            ),
          ),
          Positioned(
            left: 31,
            top: 270,
            child: Container(
              width: 320,
              height: 45,
              decoration: BoxDecoration(
                color: const Color(0xFFF9F9F9),
                border: Border.all(color: const Color(0xFFCCC9C9)),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
                borderRadius: BorderRadius.circular(9),
              ),
              child: Stack(
                children: [
                  Visibility(
                    visible: _reportId.isEmpty,
                    child: Positioned(
                      left: 15,
                      top: 11,
                      child: Text(
                        'Report ID',
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color(0xFFC4C4C4),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 296,
                    height: 45,
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      textAlign: TextAlign.start,
                      onChanged: (value) {
                        _reportId = value;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: _reportId.isEmpty ? '' : '',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 110,
            top: 375,
            child: Container(
              width: 172,
              height: 45,
              child: ElevatedButton(
                onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => report()),
                  );
                  // Add your onPressed logic here
                },
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xFF007FFF)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    'Enter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation(userName: userName, email: email, gender: gender,
          age: age, shifttiming: shifttiming, workingdays: workingdays),);

  }
}