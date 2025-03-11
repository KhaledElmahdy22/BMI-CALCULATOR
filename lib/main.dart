
import 'package:bootcamp_gonuer/bmi_calc.dart';
import 'package:bootcamp_gonuer/result_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bmi_calc(),
     theme: ThemeData.dark(),
    );
  }
}