import 'package:flutter/material.dart';


class report extends StatelessWidget {
  const report({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200, // Adjust the height of the image as needed
              child: Image.asset(
                'assets/images/report.png', // Replace 'your_image.jpg' with your image asset path
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Zainab Rauf'),
                SizedBox(width: 10),
                Text('729200'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Female'),
                SizedBox(width: 10),
                Text('07/07/2024'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('20'),
                SizedBox(width: 10),
                Text('686868'),
              ],
            ),
            SizedBox(height: 10),
            Text('Dr. Farheen'),
          ],
        ),
      ),
    );
  }
}


