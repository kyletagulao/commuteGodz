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
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const OnboardingScreen(),
      // },
    );
  }
}

// class MainScreen extends StatelessWidget {
//   const MainScreen({ super.key });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Main App'),
//         backgroundColor: Colors.blue[900],
//       ),

//       body: const Center(child: Text('forda commute contents')),
//     );
//   }
// }
