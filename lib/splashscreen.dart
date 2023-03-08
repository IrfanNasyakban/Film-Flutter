import 'package:listfilm/login.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset('assets/images/logo.png'),
          const Text(
            'FILM',
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
      backgroundColor: Color.fromARGB(255, 25, 3, 54),
      nextScreen: LoginScreen(),
      splashIconSize: 250,
      duration: 4000,
      splashTransition: SplashTransition.slideTransition,
    );
  }
}
