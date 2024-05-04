import 'package:flutter/material.dart';
import 'package:laboratorymodule/dashboard.dart';

class login extends StatelessWidget {
  const login({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 120), // Adjusted height to provide spacing
            Image.asset(
              'assets/images/Screen2.png',
              height: 200, // Increased height of the image
            ),
            SizedBox(height: 20), // Adds spacing between the image and text fields
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.email, color: Colors.grey),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(height: 10), // Adds spacing between the elements
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.lock, color: Colors.grey),
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 20), // Adds spacing between the elements
            Image.asset('assets/images/heart.png'),
            // Heart image
            SizedBox(height: 20), // Adds spacing between the elements
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF007FFF), // Color code for the button
                shadowColor: Colors.black, // Added shadow to the button
                elevation: 7, // Increased elevation for more pronounced shadow
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => dashboard()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white, // Made the text color white
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
