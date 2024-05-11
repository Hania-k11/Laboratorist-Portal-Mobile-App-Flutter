import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

var ip = "192.168.100.6";

Future<void> fetch() async {
  final url = Uri.parse('http://192.168.100.6:8000/getallhospitals/');
  //final visit = Visit(doctorid: doctorid, date: date);
  final response = await http.get(
    url,
    headers: {'Content-Type': 'application/json'},);

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    print(jsonResponse.toString());
  } else {
    throw Exception('Failed to load data');
  }
}

//http://192.168.100.6:8000/getallhospitals/
Future<void> fetch_loginn() async {
final url = Uri.parse('http://192.168.100.6:8000/getallLoginn/');
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
  var url = Uri.parse('http://192.168.100.6:8000//getallLoginn/');

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