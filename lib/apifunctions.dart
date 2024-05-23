import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:laboratorymodule/dashboard.dart';

var ip = "10.133.135.137";
//var reportid;
//fetching all tests

Future<bool> reportfail( reportid, String pass) async {
  print("function hoon");
  final url = Uri.parse('http://$ip:8000/fetchpatientreport/$reportid');
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

        //  print(passwords);
        //print(email);
        //String gender = jsonData['gender']; // Assuming gender is a field in your database
        return reportid == reportid ;
      } else {
        print("No report available");
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
Future<List< dynamic>> patient111(laboratorist_ID) async {
  print('patient111');
  final url = Uri.parse('http://$ip:8000/fetchpatientreportinfo/$laboratorist_ID');
  final Map<String, String> headers = {'Content-Type': 'application/json'};
  final response = await http.get(
    url,
    headers: headers,
  );
  print(response.statusCode);

  if (response.statusCode == 200) {
    print('now im here again 234');
    //  print(response.body);
    List< dynamic> jsonData = json.decode(response.body);
    //  print('jsonResponse: $jsonData['Age']');
    return jsonData;
  } else {
    print('in the else cond');
    throw Exception('Failed to load data');
  }
}


Future<List< dynamic>> completedTest(laboratorist_ID) async {
  print('completed test api function');
  final url = Uri.parse('http://$ip:8000/completed-tests-patientrepot/$laboratorist_ID');
  final Map<String, String> headers = {'Content-Type': 'application/json'};
  final response = await http.get(
    url,
    headers: headers,
  );

  print(response.body);
  print(response.statusCode);

  if (response.statusCode == 200) {

    //  print(response.body);
    List< dynamic> jsonData = json.decode(response.body);
    //  print('jsonResponse: $jsonData['Age']');
    return jsonData;
  } else {

    throw Exception('Failed to load data');
  }
}

Future<void> Updateteststatus(teststatus) async {
  final apiUrl = 'http://$ip:8000/updatetestinfostatus/5'; // replace with your API URL
  final headers = {
    'Content-Type': 'application/json',
  };

  final requestBody = {
    {
      "patientid": 0,
      "teststatus": teststatus
    }
  };
}
Future<void> updateTestStatus(int patientID) async {
  final url = Uri.parse('http://$ip:8000/statusssupdateee/$patientID'); // Replace with your actual API URL
 // Replace with your actual API URL
  final Map<String, String> headers = {'Content-Type': 'application/json'};
  final response = await http.put(
    url,
    headers: headers,
  );
print("in update func api");
print(response.body);
print("-------");
  if (response.statusCode == 200) {
    final jsonResponse = json.decode(response.body);
    print(jsonResponse.toString());
    // You might want to handle the updated status here, e.g., updating the state in your Flutter app
  } else {
    throw Exception('Failed to update status');
  }
}

Future<bool>  authorizationn(String emailaddress, String password) async {
 print("function hoon");
  final url = Uri.parse('http://$ip:8000/logininfo/$emailaddress');
  final Map<String, String> headers = {'Content-Type': 'application/json'};
  final response = await http.get(url, headers: headers);

  print(response.statusCode);
  //print(emailaddress);
  //print(password);
  if (response.statusCode == 200) {
    print("im here");
    Map<String, dynamic> jsonData = json.decode(response.body);
    if (jsonData.isNotEmpty) {
      String email = jsonData['email'];
      String passwords = jsonData['password'];
      print(passwords);
      print(email);
      //String gender = jsonData['gender']; // Assuming gender is a field in your database
      return
        email == emailaddress && passwords == password;
    } else {
     return false;
    }
  } else {
    // Failed to fetch data from the API
  return false;
  }
}

// Future<void> fetch_login(BuildContext context, String email, String password, String laboratistname, String gender,
//     String shifttiming, String workingdays, int age) async {
//   print("fetchlogin function");
//   final url = Uri.parse('http://$ip:8000/getallLaboratoristt/');
//
//   final response = await http.get(url, headers: {'Content-Type': 'application/json'});
//
//
//   print(response.statusCode);
//
//   if (response.statusCode == 200) {
//     List<dynamic> users = json.decode(response.body);
//
//
//
//     // Print the fetched users for debugging
//     print(users);
//     users.forEach((user) {
//       print('Name: ${user['laboratistname']}');
//       print('Email: ${user['email']}');
//       print('Password: ${user['password']}');
//     });
//     print(response.body);
//
//
//
//
//     // Check if any user matches the entered email and password
//     // Find the user's name based on email and password
//     var user = users.firstWhere(
//           (user) => user['email'] == email && user['password'] == password,
//       orElse: () => null,
//     );
//
//     if (user != null) {
//       // If user found, extract the name
//       final String userName = user['laboratistname'];
//       final String email = user['email'];
//       final String gender = user['gender'];
//       final String shifttiming = user['shifttiming'];
//       final String workingdays = user['workingdays'];
//       final int age = user['age'];
//
//       // Navigate to the dashboard screen with the user's name
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//           builder: (context) => Dashboard(userName: userName, gender: gender, shifttiming: shifttiming,
//           workingdays: workingdays, age: age, email: email),
//         ),
//       );
//     } else {
//       // Display an error message
//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           title: Text('Error'),
//           content: Text('Incorrect email or password'),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: Text('OK'),
//             ),
//           ],
//         ),
//       );
//     }
//   } else {
//     // Handle error if unable to fetch data from the server
//     throw Exception('Failed to load data');
//   }
// }
Future<void> fetch() async {
  final url = Uri.parse('http://$ip:8000/getallpatient00/');
  //final visit = Visit(doctorid: doctorid, date: date);
 // print("hania");
  final response = await http.get(url, headers: {'Content-Type': 'application/json'},);
  print(response.statusCode);
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    print(jsonResponse.toString());
  } else {
    throw Exception('Failed to load data');
  }
}

Future<List< dynamic>> patient1111() async {
  print('patient11');
  final url = Uri.parse('http://$ip:8000/getallpatient11/');
  final Map<String, String> headers = {'Content-Type': 'application/json'};
  final response = await http.get(
    url,
    headers: headers,
  );
  print(response.statusCode);

  if (response.statusCode == 200) {
    print('now im here again 234');
    //  print(response.body);
    List< dynamic> jsonData = json.decode(response.body);
    //  print('jsonResponse: $jsonData['Age']');
    return jsonData;
  } else {
    print('in the else cond');
    throw Exception('Failed to load data');
  }
}

Future<List< dynamic>> completedTestt() async {
  print('completed test api function');
  final url = Uri.parse('http://$ip:8000/completed-tests/');
  final Map<String, String> headers = {'Content-Type': 'application/json'};
  final response = await http.get(
    url,
    headers: headers,
  );

  print(response.body);
  print(response.statusCode);

  if (response.statusCode == 200) {

    //  print(response.body);
    List< dynamic> jsonData = json.decode(response.body);
    //  print('jsonResponse: $jsonData['Age']');
    return jsonData;
  } else {

    throw Exception('Failed to load data');
  }
}

Future<List< dynamic>> remainingTest(laboratorist_ID) async {
  print('completed test api function');
  final url = Uri.parse('http://$ip:8000/remaining-tests-patientrepot/$laboratorist_ID');
  final Map<String, String> headers = {'Content-Type': 'application/json'};
  final response = await http.get(
    url,
    headers: headers,
  );

  print(response.body);
  print(response.statusCode);

  if (response.statusCode == 200) {

    //  print(response.body);
    List< dynamic> jsonData = json.decode(response.body);
    //  print('jsonResponse: $jsonData['Age']');
    return jsonData;
  } else {

    throw Exception('Failed to load data');
  }
}


Future<List< dynamic>> patient00() async {
print('in the appointment func');
  final url = Uri.parse('http://$ip:8000/getallpatient00/');
  final Map<String, String> headers = {'Content-Type': 'application/json'};
  final response = await http.get(
    url,
    headers: headers,
  );
 print(response.statusCode);
  if (response.statusCode == 200) {
    print('now im here again 234');
  //  print(response.body);
   List< dynamic> jsonData = json.decode(response.body);
  //  print('jsonResponse: $jsonData['Age']');
    return jsonData;
  } else {
    print('in the else cond');
    throw Exception('Failed to load data');
  }
}


Future<void> fetchy() async {
  final url = Uri.parse('http://192.168.18.5:8000/getallhospitals/');
  //final visit = Visit(doctorid: doctorid, date: date);
  // print("hania");
  final response = await http.get(url, headers: {'Content-Type': 'application/json'},);

  print(response.statusCode);

  if (response.statusCode == 200) {

    List jsonResponse = json.decode(response.body);
    print(jsonResponse.toString());


  } else {
    throw Exception('Failed to load data');
  }
}

Future<void> get_labo() async {
  final url = Uri.parse('http://192.168.18.5:8000/getalllabo/');
  //final visit = Visit(doctorid: doctorid, date: date);
  final response = await http.get(
    url,
    headers: {'Content-Type': 'application/json'},);

  print ("jjjjjjjj");
  print(response.statusCode);
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    print(jsonResponse.toString());
  } else {
    throw Exception('Failed to load data');
  }
}


//http://192.168.100.6:8000/getallhospitals/
Future<void> fetch_loginn() async {
final url = Uri.parse('http://192.168.18.5:8000/getallLoginn/');
  //final visit = Visit(doctorid: doctorid, date: date);

  final response = await http.get(url, headers: {'Content-Type': 'application/json'},);
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);

    print(jsonResponse.toString());

  } else {
  throw Exception('Failed to load data');
  }
}



Future<void> fetchDataAndDisplay() async {
  // Replace 'https://api.example.com/data' with the URL of your API endpoint
  var url = Uri.parse('http://192.168.18.5:8000//getallLoginn/');

  print("hiii");
  try {
    // Send a GET request to the API endpoint
    var response = await HttpClient().getUrl(url);
    print('i am here');
    // Close the request, wait for the response, and decode JSON
    var jsonResponse = jsonDecode(await (await response.close()).transform(utf8.decoder).join());

    // Display the fetched data on the console
    print(jsonResponse);
  } catch (e) {
    print('Error fetching data: $e');
  }
}
class apifunctions{




}


  Future<bool> author (String emailaddress, String password) async {
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
      //print(userid);
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
