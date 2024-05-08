import 'package:flutter/material.dart';


class report extends StatelessWidget {
  const report({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/images/Group 89.png',
              fit: BoxFit.contain,
              height: MediaQuery.of(context).size.height * 0.8, // Adjust the size of the image
            ),
          ),
          Positioned(
            left: 100,
            top: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Zainab Rauf'),
                    SizedBox(width: 10),
                    Text('729200'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('Female'),
                    SizedBox(width: 10),
                    Text('07/07/2024'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
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
        ],
      ),
    );
  }
}