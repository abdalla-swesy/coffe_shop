import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Colors.white,
    primary: Color.fromRGBO(198, 124, 78, 1),
    secondary: Color.fromRGBO(43, 43, 43, 1),
  ),
);
ThemeData darkmode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Color.fromRGBO(13, 17, 23, 1),
    primary: Color.fromRGBO(198, 124, 78, 1),
    secondary: Color.fromRGBO(255, 255, 255, 1),
    onPrimary: Color.fromRGBO(0, 0, 0, 1),
  ),
);
