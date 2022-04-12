import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:soil_monitoring_system/dashboard.dart';
import 'styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soil Health Monitoring System',
      home: AnimatedSplashScreen(
        splash: const Text(
          'Soil Health Monitor',
          style: splashTitle,
        ),
        nextScreen: const DashboardScreen(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: const Color(0xFF222831),
      ),
    );
  }
}

