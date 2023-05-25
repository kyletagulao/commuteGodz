import 'package:flutter/material.dart';
import 'package:fordacommute/values/colors/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {

  static TextTheme lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.hammersmithOne(
      color: const Color(0xFF5F5F5F),
    ), // Heading 1
    displayMedium: GoogleFonts.hammersmithOne(
      color: const Color(0xFF5F5F5F),
    ), // Heading 2
    displaySmall: GoogleFonts.hammersmithOne(
      color: const Color(0xFF5F5F5F),
    ), // Heading 3
    headlineLarge: GoogleFonts.hammersmithOne(
      color: const Color(0xFF5F5F5F),
    ),
    headlineMedium: GoogleFonts.hammersmithOne(
      color: tWhiteColor,
    ), // Heading 4
    headlineSmall: GoogleFonts.hammersmithOne(
      color: tWhiteColor,
    ), // Heading 5
    titleLarge: GoogleFonts.hammersmithOne(
      color: const Color(0xFF5F5F5F),
    ), // Heading 6
    titleMedium: GoogleFonts.hammersmithOne(
      color: tWhiteColor,
    ), // Subtitle 1
    titleSmall: GoogleFonts.hammersmithOne(
      color: tWhiteColor, fontWeight: FontWeight.w100,
    ), // Subtitle 2
    bodyLarge: GoogleFonts.hammersmithOne(
      color: const Color(0xFF5F5F5F),
    ), // Body 1
    bodyMedium: GoogleFonts.hammersmithOne(
      color: const Color(0xFF435E55),
    ), // Body 2
    labelLarge: GoogleFonts.hammersmithOne(
      color: const Color(0xFFF1F1F1),
    ), // Button
    labelMedium: GoogleFonts.hammersmithOne(
      color: const Color(0xFFF1F1F1),
    ),
    bodySmall: GoogleFonts.hammersmithOne(
      color: const Color(0xFF5F5F5F),
    ), // Caption
    labelSmall: GoogleFonts.hammersmithOne(
      color: const Color(0xFF5F5F5F),
    ), // Overline
  );

  static TextTheme darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.hammersmithOne(
      color: const Color(0xFFD5D5D5),
    ), // Heading 1
    displayMedium: GoogleFonts.hammersmithOne(
      color: const Color(0xFFD5D5D5),
    ), // Heading 2
    displaySmall: GoogleFonts.hammersmithOne(
      color: const Color(0xFFD5D5D5),
    ), // Heading 3
    headlineLarge: GoogleFonts.hammersmithOne(
      color: const Color(0xFFD5D5D5),
    ),
    headlineMedium: GoogleFonts.hammersmithOne(
      color: const Color(0xFFD5D5D5),
    ), // Heading 4
    headlineSmall: GoogleFonts.hammersmithOne(
      color: const Color(0xFFD5D5D5),
    ), // Heading 5
    titleLarge: GoogleFonts.hammersmithOne(
      color: const Color(0xFFD5D5D5),
    ), // Heading 6
    titleMedium: GoogleFonts.hammersmithOne(
      color: const Color(0xFFD5D5D5),
    ), // Subtitle 1
    titleSmall: GoogleFonts.hammersmithOne(
      color: const Color(0xFFFF5858),
    ), // Subtitle 2
    bodyLarge: GoogleFonts.hammersmithOne(
      color: const Color(0xFFD5D5D5),
    ), // Body 1
    bodyMedium: GoogleFonts.hammersmithOne(
      color: const Color(0xFF435E55),
    ), // Body 2
    labelLarge: GoogleFonts.hammersmithOne(
      color: const Color(0xFFF1F1F1),
    ), // Button
    labelMedium: GoogleFonts.hammersmithOne(
      color: const Color(0xFFF1F1F1),
    ),
    bodySmall: GoogleFonts.hammersmithOne(
      color: const Color(0xFFD5D5D5),
    ), // Caption
    labelSmall: GoogleFonts.hammersmithOne(
      color: const Color(0xFFD5D5D5),
    ), // Overline
  );
}