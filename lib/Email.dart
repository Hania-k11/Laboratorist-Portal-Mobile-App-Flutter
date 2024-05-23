import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Email extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<Email> {
  final controllerName = TextEditingController();
  final controllerSubject = TextEditingController();
  final controllerMessage = TextEditingController();
  final controllerEmail = TextEditingController();

  // Future sendEmail({
  //   required String name,
  //   required String email,
  //   required String subject,
  //   required String message,
  // }) async {
  //   final serviceId = 'service_dwse2xo';
  //   final templateId = 'template_q2x0in8';
  //   final userId = 'AwOEbHAH_unD6KHOV';

  //   final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  //   final response = await http.post(
  //     url,
  //     headers: {
  //       'Content-Type': 'application/json',
  //     },
  //     body: json.encode({
  //       'service_id': serviceId,
  //       'template_id': templateId,
  //       'user_id': userId,
  //       'template_params': {
  //         'user_name': name,
  //         'user_email': email,
  //         'user_subject': subject,
  //         'user_message': message,
  //       },
  //     }),
  //   );

  //   print(response.body);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Email'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                TextField(
                  controller: controllerName,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your name',
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Email',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                TextField(
                  controller: controllerEmail,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your email',
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 16),
                Text(
                  'Subject',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                TextField(
                  controller: controllerSubject,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter subject',
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Message',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                TextField(
                  controller: controllerMessage,
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your message',
                    alignLabelWithHint: true,
                  ),
                ),
                SizedBox(height: 24),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // sendEmail(
                      //   name: controllerName.text,
                      //   email: controllerEmail.text,
                      //   subject: controllerSubject.text,
                      //   message: controllerMessage.text,
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 12.0),
                    ),
                    child: Text(
                      'Send',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
