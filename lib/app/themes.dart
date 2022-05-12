import 'package:flutter/material.dart';

class Themes {
  static ThemeData lightTheme = ThemeData.light().copyWith(
      brightness: Brightness.light,
      primaryColor: Colors.purple,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.pink),
      scaffoldBackgroundColor: Colors.white,
      buttonTheme: ButtonThemeData(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: Colors.purpleAccent,
      ));

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Colors.black45,
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      buttonColor: Colors.greenAccent,
    ),
    appBarTheme: const AppBarTheme(color: Colors.red),
    inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(color: Colors.white12),
      labelStyle: TextStyle(color: Colors.white54),
    ),
    brightness: Brightness.dark,
    canvasColor: Colors.red,
  );
}
