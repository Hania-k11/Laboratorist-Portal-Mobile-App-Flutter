import 'package:flutter/material.dart';
import 'package:laboratorymodule/dashboard.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class Login extends StatelessWidget {
  const Login({Key? key});

  Future<void> fetch_login(BuildContext context, String email, String password, String laboratistname) async {
    final url = Uri.parse('http://192.168.100.6:8000/getallLaboratorist/');

    final response = await http.get(url, headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      List<dynamic> users = json.decode(response.body);



      // Print the fetched users for debugging
      print(users);
      users.forEach((user) {
        print('Name: ${user['laboratistname']}');
        print('Email: ${user['email']}');
        print('Password: ${user['password']}');
      });
      print(response.body);


      // Check if any user matches the entered email and password
      bool isUserAuthenticated = users.any((user) =>
      user['email'] == email && user['password'] == password );


      // Print the authentication result for debugging
      print('Authentication Result: $isUserAuthenticated');

      if (isUserAuthenticated) {
        // Navigate to the dashboard screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Dashboard()),
        );
      } else {
        // Display an error message
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Error'),
            content: Text('Incorrect email or password'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          ),
        );
      }
    } else {
      // Handle error if unable to fetch data from the server
      throw Exception('Failed to load data');
    }
  }


  @override
  Widget build(BuildContext context) {
    String email = '';
    String password = '';
    String laboratistname = '';

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
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.email, color: Colors.grey),
                ),
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) => email = value,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: TextField(
                decoration: InputDecoration(

                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.lock, color: Colors.grey),
                ),
                obscureText: true,
                onChanged: (value) => password = value,
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

              //BUTTTOONNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN!!!!!!!!!!!!!!

              onPressed: () {
                fetch_login(context, email, password, laboratistname);
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