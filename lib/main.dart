import 'package:connect_krishi/screens/login.dart';
import 'package:connect_krishi/screens/signup.dart';
import 'package:connect_krishi/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // Set status bar color
    statusBarBrightness: Brightness.light, // Set status bar brightness
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const Center(child: SplashScreen()),
        '/login':(context) => LoginScreenApp(),
        '/signup': (context) => const SignupScreen()
      },
    );
  }
}