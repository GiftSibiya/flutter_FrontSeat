// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:taxi_math_flutter/src/features/screens/main_screen.dart';
import 'package:taxi_math_flutter/src/utils/themes/themes.dart';

void main() {
  runApp(const TaxiMath());
}

class TaxiMath extends StatelessWidget {
  const TaxiMath({super.key});

  // This widget is the root of your application.
  // Tryhadding the theme data here
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        // -- themes --//
        theme: GAppThemes.lightTheme,
        darkTheme: GAppThemes.darkTheme,
        themeMode: ThemeMode.light,
// This theme switcher is not working as it should homie
        //--//

        home: MainScreen());
  }
}
