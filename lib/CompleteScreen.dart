import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:laboratorymodule/apifunctions.dart';
import 'package:laboratorymodule/bottomnavigation.dart';
import 'package:laboratorymodule/testdescription.dart';

//List<String> test = [
// "Thyroid-Stimulating Hormone (TSH)",
// "Thyroglobulin Antibodies (TgAb)",
// "Thyroid Peroxidase Antibodies (TPOAb)",
//"Triiodothyronine (T3)",
//"Thyroxine (T4)"
//];
var component1;
var component2;
var patientname;
class CompletedScreen extends StatelessWidget {
  final String userName;
  final String email;
  final String gender;
  final int age;
  final String shifttiming;
  final String workingdays;

  const CompletedScreen({
    Key? key,
    required this.userName,
    required this.age,
    required this.email,
    required this.gender,
    required this.shifttiming,
    required this.workingdays,
  }) : super(key: key);

//1
  //haniascreen

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
