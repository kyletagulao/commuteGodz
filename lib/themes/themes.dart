import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: const MaterialColor(0xFF332885, <int, Color>{
        50: Color(0xFF9994c2),
        100: Color(0xFF857eb6),
        200: Color(0xFF7069aa),
        300: Color(0xFF5c539d),
        400: Color(0xFF473e91),
        500: Color(0xFF332885),
        600: Color(0xFF2e2478),
        700: Color(0xFF29206a),
        800: Color(0xFF241c5d),
        900: Color(0xFF1f1850),
      }
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: const MaterialColor(0xFF332885, <int, Color>{
      50: Color(0xFF9994c2),
      100: Color(0xFF857eb6),
      200: Color(0xFF7069aa),
      300: Color(0xFF5c539d),
      400: Color(0xFF473e91),
      500: Color(0xFF332885),
      600: Color(0xFF2e2478),
      700: Color(0xFF29206a),
      800: Color(0xFF241c5d),
      900: Color(0xFF1f1850),
      }
    ),
  );
}
