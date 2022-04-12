import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:soil_monitoring_system/dashboard.dart';
import 'package:soil_monitoring_system/styles.dart';

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
        splashIconSize: 460,
        splash: Column(
          children: [
            Image.asset(
              'lib/images/soilhealthmonitor.png',
              height: 300,
            ),
            const Text(
              'Manage your soils.',
              style: splashCaption
            ),
          ],
        ),
        nextScreen: const DashboardScreen(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: const Color(0xFF222831),
        duration: 5000,
      ),
    );
  }
}

