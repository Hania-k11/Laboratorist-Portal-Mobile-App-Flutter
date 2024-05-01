import 'package:flutter/material.dart';
import 'package:laboratorymodule/dashboard.dart';

class login extends StatelessWidget {
  const login({super.key});

  //maham
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // Ensures the content is scrollable if it overflows
        padding: const EdgeInsets.all(16.0), // Adds padding around the content
        child: Column(
          children: [
            Image.asset('assets/images/Screen2.png'), // Top image
            const SizedBox(height: 20), // Adds spacing between the elements
            TextField(
              decoration: const InputDecoration(
                labelText: 'Email', // Label for the email text field
                border: OutlineInputBorder(), // Adds an outline border
              ),
              keyboardType: TextInputType.emailAddress, // Keyboard type for emails
            ),
            const SizedBox(height: 10), // Adds spacing between the elements
            TextField(
              decoration: const InputDecoration(
                labelText: 'Password', // Label for the password text field
                border: OutlineInputBorder(), // Adds an outline border
              ),
              obscureText: true, // Hides password input
            ),
            const SizedBox(height: 20), // Adds spacing between the elements
            Image.asset('assets/images/heart.png'), // Heart image
            const SizedBox(height: 20), // Adds spacing between the elements
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF007FFF), // Color code for the button
              ),
              onPressed: () {
                // Action to be taken when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => dashboard()),
                );
              },
              child: const Text('Login'), // Text displayed on the button
            ),
          ],
        ),
      ),
    );
  }
}