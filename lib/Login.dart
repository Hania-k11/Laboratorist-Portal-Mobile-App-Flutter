import 'package:flutter/material.dart';
import 'package:laboratorymodule/dashboard.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:laboratorymodule/apifunctions.dart';

//var ip = "192.168.18.5";
//var laboratorist_ID;
class Login extends StatelessWidget {
  var emailaddress = '';
  var password = '';
  var userName = '';
  var shifttiming = '';
  var workingdays = '';
  var gender;
  var age;
 var laboratorist_ID;
 var reportid;

  TextEditingController _nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<bool> authorization(String emails, String pass) async {
    print("function hoon");
    final url = Uri.parse('http://$ip:8000/logininfo/$emails');
    print(url);
    final Map<String, String> headers = {'Content-Type': 'application/json'};
    print("h");

    try {
      final response = await http.get(url, headers: headers);
      print("Response status code: ${response.statusCode}");
      print("Response body: ${response.body}");
      //print(emailaddress);
      //print(password);
      if (response.statusCode == 200) {
        print("im here");
        Map<String, dynamic> jsonData = json.decode(response.body);
        if (jsonData.isNotEmpty) {
          emailaddress = jsonData['email'];
          password = jsonData['password'];
          userName = jsonData['laboratistname'];
          shifttiming = jsonData['shifttiming'];
          workingdays = jsonData['workingdays'];
          gender = jsonData['gender'];
          age = jsonData['age'];
          laboratorist_ID = jsonData['laboratorist_ID'];
          //  print(passwords);
          //print(email);
          //String gender = jsonData['gender']; // Assuming gender is a field in your database
          return emailaddress == emails && password == pass;
        } else {
          print("No data found for the given email address.");
          return false;
        }
      } else {
        print(
            "Failed to fetch data from the API. Status code: ${response.statusCode}");
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 120),
            Image.asset(
              'assets/images/Screen2.png',
              height: 200,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.email, color: Colors.grey),
                ),
                keyboardType: TextInputType.emailAddress,
                // onChanged: (value) => email = value,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.lock, color: Colors.grey),
                ),
                obscureText: true,
                //  onChanged: (value) => password = value,
              ),
            ),
            SizedBox(height: 20),
            Image.asset('assets/images/heart.png'),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF007FFF),
                shadowColor: Colors.black,
                elevation: 7,
              ),
              onPressed: () async {
                // fetch_login(context, email,  password, laboratistname,  gender,
                //  shifttiming,  workingdays,  age);
                print(_nameController.text);
                print(passwordController.text);
                var auth = await authorization(_nameController.text, passwordController.text);
                print(auth);
                if (auth == true) {
                  print("good");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Dashboard(
                        userName: userName,
                        email: emailaddress,
                        gender: gender,
                        age: age,
                        shifttiming: shifttiming,
                        workingdays: workingdays,
                          laboratorist_ID: laboratorist_ID,

                      ),
                    ),
                  );
                  // fetch_login(context, email, password, laboratistname, gender, age, shifttiming, workingdays);
                } else {
                  print("nikal");
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Invalid Credentials"),
                        content: Text("Please enter correct email or password."),
                        actions: [
                          TextButton(
                            child: Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop(); // Close the dialog
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
