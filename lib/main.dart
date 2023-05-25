import 'package:flutter/material.dart';
import 'package:fordacommute/screens/onboarding_screen.dart';
import 'package:fordacommute/values/strings/text_strings.dart';
import 'package:fordacommute/values/styles/themes.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: tAppTitle,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const OnboardingScreen(),
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const OnboardingScreen(),
      // },
    );
  }
}