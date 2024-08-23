import 'package:flutter/material.dart';
import 'package:furniture_application/login.dart';
import 'package:furniture_application/shopping.dart';
import 'package:furniture_application/splash.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreeen()
    );
  }
}
