import 'package:flutter/material.dart';

import 'package:petcare_app/splashscreen.dart';

//import 'package:petcare_app/Shop.dart';
//import 'package:petcare_app/splashscreen.dart';
//import 'package:petcare_app/bottom_navigation.dart';
//import 'package:petcare_app/Shop.dart';
//import 'package:petcare_app/DetailDoctorScreen.dart';
//import 'package:petcare_app/Shop.dart';
//import 'package:petcare_app/bottom_navigation.dart';
//import 'package:petcare_app/training.dart';
//import 'package:petcare_app/DetailDoctorScreen.dart';
//import 'package:petcare_app/grooming.dart';
//import 'package:petcare_app/dashboard.dart';
//import 'package:petcare_app/notification.dart';
//import 'package:petcare_app/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
     home:Splashscreen() ,
    );
  }
}

