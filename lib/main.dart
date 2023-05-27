import 'package:flutter/material.dart';
import 'package:connect_krishi/screens/splash_screen.dart';
import 'package:flutter/services.dart';
import 'package:connect_krishi/screens/login.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // Set status bar color
    statusBarBrightness: Brightness.light, // Set status bar brightness
  ));
  runApp(const LandingPage());
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Connect Krishi',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreenApp(),
    );
  }
}
