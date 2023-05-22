import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: const MaterialColor(0xFF332885, <int, Color>{
        50: Color(0xFF332885),
      }));
  static ThemeData darkTheme = ThemeData();
}
