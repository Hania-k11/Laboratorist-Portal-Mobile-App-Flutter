import 'package:flutter/material.dart';
import 'package:laboratorymodule/Dashboard.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:laboratorymodule/apifunctions.dart';
import 'package:laboratorymodule/report.dart';
import 'Login.dart';
import 'bottomnavigation.dart';


var reportId = '';
var patientName = '';
var patientAge = '';
var patientGender = '';
var patientContact = '';
var testName = '';
var testDate = '';
var testTime = '';
var Component1 = '';
var Component2 ='';
var Component3 = '';
var Result1 = '';
var Result2 = '';
var Result3 = '';
var Unit1 = '';
var Unit2 = '';
var Unit3 = '';
var Adult1 = '';
var Adult2 = '';
var Adult3 = '';
var Child1 = '';
var Child2 = '';
var Child3 = '';
var reportDate = '';
var refBy = '';





class viewreport extends StatelessWidget {
  final String userName;
  final String email;
  final String gender;
  final int age;
  final String shifttiming;
  final String workingdays;
  final int laboratorist_ID;


  viewreport({
    Key? key,
    required this.userName,
    required this.age,
    required this.email,
    required this.gender,
    required this.shifttiming,
    required this.workingdays,
    required this.laboratorist_ID,


  }) : super(key: key);

  TextEditingController _reportController = TextEditingController();


  Future<bool> reportCheck(String reportid, int laboratorist_IDD) async {
    final url = Uri.parse('http://$ip:8000/fetchpatientreportid/$reportid/$laboratorist_IDD');
    final Map<String, String> headers = {'Content-Type': 'application/json'};

    try {
      final response = await http.get(url, headers: headers);

      print("till now report");
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonData = json.decode(response.body);

       //2 print(response.body);
        if (jsonData.isNotEmpty) {
          // String laboratorist = laboratorist_ID.toString();
          //  laboratorist = jsonData['laboratoristid'.toString()];
          //  print(laboratorist);
          //  print(laboratorist_ID);
          // return laboratorist == laboratorist_ID;

           reportId = jsonData['reportid'];
          patientName = jsonData['patientname'];
           patientAge = jsonData['patientage'];
           patientGender = jsonData['patientgender'];
            patientContact = jsonData['patientcontact'];
           testName = jsonData['testname'];
            testDate = jsonData['testdate'];
           testTime = jsonData['testtime'];
           Component1 = jsonData['component1'];
            Component2 =jsonData['component2'];
            Component3 = jsonData['component3'];
            Result1 = jsonData['result1'];
            Result2 = jsonData['result2'];
            Result3 = jsonData['result3'];
           Unit1 = jsonData['unit1'];
           Unit2 = jsonData['unit2'];
            Unit3 = jsonData['unit3'];
          Adult1 = jsonData['adult1'];
           Adult2 = jsonData['adult2'];
            Adult3 = jsonData['adult3'];
            Child1 = jsonData['child1'];
            Child2 = jsonData['child2'];
           Child3 = jsonData['child3'];
            reportDate = jsonData['reportdate'];
            refBy = jsonData['refby'];


            print(userName);
           print(laboratorist_IDD);
           print(laboratorist_IDDD);
           return reportId == reportid && laboratorist_IDDD == laboratorist_IDD;
           print(laboratorist_IDD);
        } else {
          print("No data found for the given email address.");
          return false;
        }
      } else {
        print(
            "Failed to fetch data from the API. Status code: ${response
                .statusCode}");
        return false;
      }
    } catch (e) {
      print("An error occurred while making the HTTP request: $e");
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: Stack(
          children: [
            Positioned(
              left: 8,
              top: 40,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/pro1.png'),
              ),
            ),
            Positioned(
              right: 3,
              top: 40,
              child: IconButton(
                splashRadius: 35,
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/logo.png',
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
              width: 415,
              height: 35,
              decoration: BoxDecoration(
                color: const Color(0xFF007FFF),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 4),
                    blurRadius: 15,
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
            left: 30,
            top: 123,
            child: Image.asset(
              'assets/images/obj.png.png',
              width: 133,
              height: 166,
            ),
          ),
          Positioned(
            left: 50,
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
                  // Visibility(
                  //2   visible: _reportController.text.isEmpty,
                  //    child: Positioned(
                  //      left: 15,
                  //      top: 11,
                  //      child: Text(
                  //        'R ',
                  //        style: const TextStyle(
                  //          fontFamily: 'Poppins',
                  //          fontStyle: FontStyle.normal,
                  //          fontWeight: FontWeight.w400,
                  //          fontSize: 15,
                  //          color: Color(0xFFC4C4C4),
                  //        ),
                  //      ),
                  //    ),
                  //  ),
                  Container(
                    width: 355,
                    height: 46,
                    padding: const EdgeInsets.only(left: 2),
                    child: TextField(
                      controller: _reportController,
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        labelText: 'Report ID',
                        border: OutlineInputBorder(),
                        // border: InputBorder.none,
                        //   hintText: '',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 115,
            top: 375,
            child: Container(
              width: 172,
              height: 45,
              child: ElevatedButton(
                onPressed: () async {
                  print(_reportController);

                  var auth = await reportCheck(
                      _reportController.text, laboratorist_IDDD);
                  print("lab1sss: $laboratorist_IDDD");
                  print(auth);
                  if (auth) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => report(
                        userName: userName,
                        email: email,
                        gender: gender,
                        age: age,
                        shifttiming: shifttiming,
                        workingdays: workingdays,
                        laboratorist_ID: laboratorist_ID,

                       // reportId : reportId.toString(),
                      )),
                    );
                  }

                  else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(
                            'Alert',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                            ),
                          ),
                          content: Text(
                            "Report's not available",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: Text(
                                'OK',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<
                                    Color>(const Color(0xFF007FFF)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFF007FFF)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  elevation: MaterialStateProperty.all<double>(9.0),
                  shadowColor: MaterialStateProperty.all<Color>(
                      Colors.black.withOpacity(0.9)),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Text(
                    'Enter',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black38,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
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
