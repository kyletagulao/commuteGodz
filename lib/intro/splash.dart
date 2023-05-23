import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ super.key });

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashDelay();
  }

  // delays screen of the scaffold before navigating back
  void splashDelay() async {
    await Future.delayed(const Duration(milliseconds: 1800));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainScreen()));
  }

  @override
  Widget build(BuildContext context) => const Scaffold(
    body: Center(child: Text('Hello world', style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30
    ))),
  );
}

class MainScreen extends StatelessWidget {
  const MainScreen({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main App'),
        backgroundColor: Colors.blue[900],
      ),

      body: const Center(child: Text('forda commute contents')),
    );
  }
}