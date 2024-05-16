import 'package:flutter/material.dart';
import 'package:laboratorymodule/dashboard.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;


class Login extends StatelessWidget {
  const Login({Key? key});
 // final TextEditingController _nameController = TextEditingController();
//  TextEditingController passwordController = TextEditingController();

  Future<bool> authorization (String emailaddress, String password) async {
    print(emailaddress);
    print(password);
    print('in authorization 1');
    final url = Uri.parse('http://10.133.137.133:8000/logininfo/$emailaddress');

    final Map<String, String> headers = {'Content-Type': 'application/json'};
    final response = await http.get(
      url,
      headers: headers,
    );
    print('in authorization 2');


    if (response.statusCode == 200) {

      Map<String, dynamic> jsonData = json.decode(response.body);
      if(jsonData.isNotEmpty){
        String email = jsonData['email'];
        String passwords = jsonData['password'];
        //userid = jsonData['PatientId'];
        print(email);
        print(password);
       // print(userid);
        return email == emailaddress && passwords == password;
      }
      else{
        return false;
      }

    } else {
      // Failed to fetch data from the API
      return false;

    }

  }

  Future<void> fetch_login(BuildContext context, String email, String password, String laboratistname, String gender, ) async {
    final url = Uri.parse('http://10.133.137.133:8000/getallLaboratoristt/');

    final response = await http.get(url, headers: {'Content-Type': 'application/json'});

    print(response.statusCode);

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
      // Find the user's name based on email and password
      var user = users.firstWhere(
            (user) => user['email'] == email && user['password'] == password,
        orElse: () => null,
      );

      if (user != null) {
        // If user found, extract the name
        final String userName = user['laboratistname'];

        // Navigate to the dashboard screen with the user's name
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Dashboard(userName: userName),
          ),
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
                print(email);
               fetch_login(context, email, password, laboratistname);
              // print(email);
               //print(password);
            // var auth = authorization(email,password);;


             // if(auth == true ){
             //   print('you are good to go');
             // }
             // else
             //   print('fuck u');
             //
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