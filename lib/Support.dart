import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Email.dart';
import 'bottomnavigation.dart';

class Support extends StatelessWidget {

  final String userName;
  final String email;
  final String gender;
  final int age;
  final String shifttiming;
  final String workingdays;
  final int laboratorist_ID;

  const Support({
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // The image at the bottom with specific dimensions
          Positioned.fill(
            child: Center(
              child: Container(
                height: 830.0, // Specify the height
                width: 415.0,  // Specify the width
                child: Image.asset(
                  'assets/images/support.png', // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // The icon button on top of the image
          Positioned(
            top: 160.0,
            right: 50.0,
            child: IconButton(
              icon: Icon(Icons.arrow_forward),
              color: Colors.grey,
              onPressed: () async {
                String? encodeQueryParameters(Map<String, String> params) {
                  return params.entries
                      .map((MapEntry<String, String> e) =>
                  '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                      .join('&');
                }
                final Uri emailUri = Uri (
                  scheme: 'mailto',
                  path: 'haniak363@gmail.com',
                  query: encodeQueryParameters(<String, String>{
                    'subject': 'Complain',
                    'body':
                        'hello',
                  })


                );
                if(await canLaunchUrl(emailUri)){

                launchUrl(emailUri);
                } else{
                  throw Exception('Cound not launch $emailUri');
                }


             //   launchUrl(emailUri);




              },
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigation(
        userName: userName,
        email: email,
        gender: gender,
        age: age,
        shifttiming: shifttiming,
        workingdays: workingdays,
        laboratorist_ID: laboratorist_ID,
      ),
    );
  }
}
