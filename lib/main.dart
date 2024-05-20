import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:laboratorymodule/ProjectScreen.dart';
import 'package:laboratorymodule/dashboard.dart';
import 'package:laboratorymodule/Login.dart';
import 'package:laboratorymodule/testdescription.dart';
import 'package:laboratorymodule/viewreport.dart';

import 'ProjectScreen.dart';
import 'consts.dart';

void main() {
  Gemini.init(apiKey: GEMINI_API_KEY,
  );
  print("gem");
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProjectScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
