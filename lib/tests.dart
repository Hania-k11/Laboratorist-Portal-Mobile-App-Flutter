import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:laboratorymodule/apifunctions.dart';
import 'package:laboratorymodule/bottomnavigation.dart';
import 'package:laboratorymodule/testdescription.dart';

//List<String> test = [
// "Thyroid-Stimulating Hormone (TSH)",
// "Thyroglobulin Antibodies (TgAb)",
// "Thyroid Peroxidase Antibodies (TPOAb)",
//"Triiodothyronine (T3)",
//"Thyroxine (T4)"
//];

class tests extends StatelessWidget {
  final String userName;
  final String email;
  final String gender;
  final int age;
  final String shifttiming;
  final String workingdays;

  const tests({
    Key? key,
    required this.userName,
    required this.age,
    required this.email,
    required this.gender,
    required this.shifttiming,
    required this.workingdays,
  }) : super(key: key);

//1
  //haniascreen

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
            padding:  EdgeInsets.only(left: 9.0), // Adjust the padding here
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
              _buildRoundButton1('All Tests'),
               SizedBox(width: 10),
              _buildRoundButton2('Completed'),
               SizedBox(width: 10),
              _buildRoundButton3('Remaining'),
               SizedBox(width: 2),
            ],
          ),
            SizedBox(height: 20),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                // Adjust horizontal padding as needed

                child: FutureBuilder<List<dynamic>>(
                    future: patient11(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        // Display an error message if fetching data failed
                        return Text('Error: ${snapshot.error}');
                      } else if (snapshot.hasData) {
                        // Display the data in a ListView
                        final data = snapshot.data!;
                        // print(data);

                        return ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (BuildContext context, int index) {
                            final item = data[index];
                            print(item['patientname']);
                            var name = item['patientname'];

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
                                          backgroundImage: AssetImage(
                                              'assets/images/avatarfemale.png'),
                                        ),
                                        SizedBox(width: 20.0),
                                        Text(name),
                                        // Text(
                                        //   name,
                                        //   style: TextStyle(
                                        //     fontWeight: FontWeight.bold,
                                        //     fontFamily: 'Epilogue',
                                        //     color: Color(0xff573926),
                                        //     fontSize:
                                        //         20.0, // Choose your desired size. This sets the font size to 24.0
                                        //   ),
                                        // )
                                      ],
                                    ),
                                     Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 59.0),
                                      // Adjust vertical padding as needed
                                      child: Text(
                                        item['testname'],
                                        //item['testname'],
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          // Your specified font family
                                          color: Color(0xff573926),
                                          // Your specified color
                                          fontSize:
                                              15.0, // Your specified font size
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.date_range),
                                            SizedBox(width: 4.0),
                                            Text(item['testdate']),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            // Add onPressed functionality here
                                          },
                                          style: TextButton.styleFrom(
                                            backgroundColor: Colors.grey,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 1.0,
                                                horizontal: 16.0),
                                            child: Text(
                                              'Completed',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),

                                        //VIEW DETAIL BUTTON!!!!!!!
                                        TextButton(
                                            onPressed: () {
                                              // Define what happens when the button is pressed
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        testdescription(
                                                            userName: userName,
                                                            email: email,
                                                            gender: gender,
                                                            age: age,
                                                            shifttiming:
                                                                shifttiming,
                                                            workingdays:
                                                                workingdays),
                                                  ));
                                            },
                                            child: const Text(
                                              'View Detail',
                                              style: TextStyle(
                                                fontFamily: 'Epilogue',
                                                // Specifies the font family
                                                color: Color(0xFF595461),
                                                fontWeight: FontWeight.bold,
                                                fontSize:
                                                    17.0, // Sets the font color using the hex code
                                              ),
                                            ))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ); //listview
                      } else {
                        // Display a loading indicator while fetching data
                        return CircularProgressIndicator();
                      }
                    })),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigation(
          userName: userName,
          email: email,
          gender: gender,
          age: age,
          shifttiming: shifttiming,
          workingdays: workingdays),
    );
  }

  Widget _buildRoundButton1(String text) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF007FFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 4),
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

Widget _buildRoundButton2(String text) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      boxShadow: [
        BoxShadow(
          color: Colors.blue.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF007FFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 4),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}

Widget _buildRoundButton3(String text) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      boxShadow: [
        BoxShadow(
          color: Colors.blue.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF007FFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 4),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}
