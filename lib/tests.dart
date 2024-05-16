import 'package:flutter/material.dart';
import 'package:laboratorymodule/bottomnavigation.dart';
import 'package:laboratorymodule/testdescription.dart';

List<String> test = [
  "Thyroid-Stimulating Hormone (TSH)",
  "Thyroglobulin Antibodies (TgAb)",
  "Thyroid Peroxidase Antibodies (TPOAb)",
  "Triiodothyronine (T3)",
  "Thyroxine (T4)"
];

class tests extends StatelessWidget {
  final String userName;
  const tests({Key? key, required this.userName}) : super(key: key);
//1
  //haniascreen

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
      body: Column(
        children: [
          const SizedBox(height: 15),
          Container(
            width: 500, // Adjust the width as needed
            child: Image.asset(
              'assets/images/testbanner.png',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(width: 2),
              _buildRoundButton('All Tests'),
              const SizedBox(width: 10),
              _buildRoundButton('Completed'),
              const SizedBox(width: 10),
              _buildRoundButton('Remaining'),
              const SizedBox(width: 2),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              // Adjust horizontal padding as needed
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
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
                          const Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/images/avatarfemale.png'),
                              ),
                              SizedBox(width: 20.0),
                              Text(
                                'Hania Khan',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Epilogue',
                                  color: Color(0xff573926),
                                  fontSize:
                                      20.0, // Choose your desired size. This sets the font size to 24.0
                                ),
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    59.0), // Adjust vertical padding as needed
                            child: Text(
                              'Thyroid Test',
                              style: TextStyle(
                                fontFamily:
                                    'Poppins', // Your specified font family
                                color:
                                    Color(0xff573926), // Your specified color
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
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.date_range),
                                  SizedBox(width: 4.0),
                                  Text('23rd March 2024'),
                                ],
                              ),
                              SizedBox(width: 16.0),
                              Row(
                                children: [
                                  Icon(Icons.access_time),
                                  SizedBox(width: 4.0),
                                  Text('9:00 AM'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  // Add onPressed functionality here
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 1.0, horizontal: 16.0),
                                  child: Text(
                                    'Completed',
                                    style: TextStyle(color: Colors.white),
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
                                          builder: (context) => testdescription(
                                              userName: '$userName',
                                              age: 19,
                                              gender: 'Female',
                                              dateofTest: '18/7/24',
                                              test: test)),
                                    );
                                  },
                                  child: const Text(
                                    'View Detail',
                                    style: TextStyle(
                                      fontFamily:
                                          'Epilogue', // Specifies the font family
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
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigation(userName: userName,),
    );
  }

  Widget _buildRoundButton(String text) {
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
