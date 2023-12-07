import 'package:flutter/material.dart';
import 'package:taxi_math_flutter/src/Constants/colors.dart';

//-- MAIN THEME CLASS --//
class GAppThemes {
  //-- light theme

  static ThemeData lightTheme =
      ThemeData(brightness: Brightness.light, primaryColor: lightColor);

  //-- dark theme

  static ThemeData darkTheme =
      ThemeData(brightness: Brightness.dark, primaryColor: darkColor);
}
