// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taxi_math_flutter/custom_widgets/rowField.dart';
import 'package:taxi_math_flutter/pages/main_screen.dart';

void main() {
  runApp(const TaxiMath());
}

class TaxiMath extends StatelessWidget {
  const TaxiMath({super.key});

  // This widget is the root of your application.
  // Tryhadding the theme data here
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, 
    home: MainScreen());
  }
}
