import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:laboratorymodule/Remaining.dart';
import 'package:laboratorymodule/apifunctions.dart';
import 'package:laboratorymodule/bottomnavigation.dart';
import 'package:laboratorymodule/testdescription.dart';
import 'package:laboratorymodule/CompleteScreen.dart';
import 'package:http/http.dart' as http;
import 'package:laboratorymodule/tests.dart';

import 'WhiteBoxIndicator.dart';

int patientIDforupdate = 0;
var component1;
var component2;
var patientname;

class Remaining extends StatefulWidget {
  final String userName;
  final String email;
  final String gender;
  final int age;
  final String shifttiming;
  final String workingdays;
  final int laboratorist_ID;

  const Remaining({
    Key? key,
    required this.userName,
    required this.age,
    required this.email,
    required this.gender,
    required this.shifttiming,
    required this.workingdays,
    required this.laboratorist_ID,
  }) : super(key: key);

  @override
  _TestsState createState() => _TestsState();
}

class _TestsState extends State<Remaining> {
  Future<void> updateTestStatus(int patientID) async {
    final url = Uri.parse('http://$ip:8000/statusssupdateee/$patientID'); // Replace with your actual API URL
    final Map<String, String> headers = {'Content-Type': 'application/json'};
    final response = await http.put(
      url,
      headers: headers,
    );
    ("apu fun");
    print(response.body);
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      print(jsonResponse.toString());
      setState(() {
        // Rebuild the widget to reflect the changes
      });
    } else {
      throw Exception('Failed to update status');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(left: 9.0), // Adjust the padding here
          child: CircleAvatar(
            radius: 20, // Adjust the size here
            backgroundImage: AssetImage('assets/images/pro1.png'),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/logo.png',
              width: 40,
              height: 40,
            ),
            iconSize: 40,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 15),
          Container(
            width: 500, // Adjust the width as needed
            child: Image.asset(
              'assets/images/testbanner.png',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 2),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>
                        tests(userName: widget.userName,
                            email: widget.email,
                            gender: widget.gender,
                            age: widget.age,
                            shifttiming: widget.shifttiming,
                            workingdays: widget.laboratorist_ID.toString(),
                            laboratorist_ID: widget.laboratorist_ID)), // Navigate to Login screen
                  );
                  // Add onPressed functionality here
                },
                child: Text('All Tests'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CompletedScreen(
                        userName: widget.userName,
                        email: widget.email,
                        gender: widget.gender,
                        age: widget.age,
                        shifttiming: widget.shifttiming,
                        workingdays: widget.workingdays,
                        laboratorist_ID: widget.laboratorist_ID,
                      ),
                    ),
                  );
                },
                child: Text('Completed'),
              ),
              SizedBox(width: 10),
              ElevatedButton(

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey, // Set background color to gray
                  shadowColor: Colors.white, // Set shadow color to white
                  elevation: 7, // Set elevation to 7
                ),
                onPressed: () {
                  // Add onPressed functionality here
                },
                child: Text('Remaining', style: TextStyle(color: Colors.white)), // Set text color to white
              ),
              SizedBox(width: 2),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              // Adjust horizontal padding as needed
              child: FutureBuilder<List<dynamic>>(
                future: remainingTest(widget.laboratorist_ID),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    // Display an error message if fetching data failed
                    return Text('Error: ${snapshot.error}');
                  } else if (snapshot.hasData) {
                    // Display the data in a ListView
                    final data = snapshot.data!;
                    return ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int index) {
                        final item = data[index];
                        final testName = item['testname'];
                        final patientName = item['patientname'];
                        final patientAge = item['patientage'];
                        final patientGender = item['patientgender'];
                        final testDate = item['testdate'];
                        final component1 = item['component1'];
                        final component2 = item['component2'];
                        final component3 = item['component3'];
                        final testStatus = item['teststatus'];
                        final patientID = item['patientid'];

                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE2EBF3),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage('assets/images/pro3.png'),
                                    ),
                                    SizedBox(width: 20.0),
                                    Text(patientName),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 59.0),
                                  child: Text(
                                    testName,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xff573926),
                                      fontSize: 15.0, // Your specified font size
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8.0),
                                const Divider(
                                  color: Color(0xFF42A99E),
                                  thickness: 2.0,
                                ),
                                const SizedBox(height: 8.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.date_range),
                                        SizedBox(width: 4.0),
                                        Text(testDate),
                                      ],
                                    ),
                                    SizedBox(width: 16.0),
                                    Row(
                                      children: [
                                        Icon(Icons.access_time),
                                        SizedBox(width: 4.0),
                                        Text(item['testtime']),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                      onPressed: item['teststatus'] == 'Completed'
                                          ? null
                                          : () async {
                                        await updateTestStatus(patientID);
                                        // Rebuild the widget to reflect the updated status
                                        setState(() {
                                          item['teststatus'] = 'Completed';
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: item['teststatus'] == 'Completed'
                                            ? Colors.grey
                                            : Colors.pink,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20.0),
                                        ),
                                      ),
                                      child: Text(
                                        item['teststatus'],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // Define what happens when the button is pressed
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => testdescription(
                                              userName: widget.userName,
                                              email: widget.email,
                                              gender: widget.gender,
                                              age: widget.age,
                                              shifttiming: widget.shifttiming,
                                              workingdays: widget.workingdays,
                                              testName: testName,
                                              patientName: patientName,
                                              patientAge: patientAge,
                                              patientGender: patientGender,
                                              testDate: testDate,
                                              Component1: component1,
                                              Component2: component2,
                                              Component3: component3,
                                              laboratorist_ID: widget.laboratorist_ID,
                                            ),
                                          ),
                                        );
                                      },
                                      child: const Text(
                                        'View Detail',
                                        style: TextStyle(
                                          fontFamily: 'Epilogue',
                                          color: Color(0xFF595461),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.0, // Sets the font color using the hex code
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    // Display a loading indicator while fetching data
                    return WhiteBoxIndicator(
                      width: 80.0, // Adjust width and height as needed
                      height: 80.0,
                    );
                  }
                },
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigation(
        userName: widget.userName,
        email: widget.email,
        gender: widget.gender,
        age: widget.age,
        shifttiming: widget.shifttiming,
        workingdays: widget.workingdays,
        laboratorist_ID: widget.laboratorist_ID,
      ),
    );
  }
}
