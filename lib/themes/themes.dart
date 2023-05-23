import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: const MaterialColor(0xFF332885, <int, Color>{
        50: Color(0xFF88acd5),
        100: Color(0xFF709bcc),
        200: Color(0xFF588ac4),
        300: Color(0xFF4079bb),
        400: Color(0xFF2869b3),
        500: Color(0xFF1058AA),
        600: Color(0xFF0e4f99),
        700: Color(0xFF0d4688),
        800: Color(0xFF0b3e77),
        900: Color(0xFF0a3566)
      }
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: const MaterialColor(0xFF332885, <int, Color>{
      50: Color(0xFF88acd5),
      100: Color(0xFF709bcc),
      200: Color(0xFF588ac4),
      300: Color(0xFF4079bb),
      400: Color(0xFF2869b3),
      500: Color(0xFF1058AA),
      600: Color(0xFF0e4f99),
      700: Color(0xFF0d4688),
      800: Color(0xFF0b3e77),
      900: Color(0xFF0a3566)
      }
    ),
  );
}
