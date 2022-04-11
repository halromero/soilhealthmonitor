import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soil_monitoring_system/dashboard.dart';
import 'splashScreen.dart';
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
        splash: Text(
          'Soil Health Monitor',
          style: GoogleFonts.staatliches(textStyle: splashTitle),
        ),
        nextScreen: DashboardScreen(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Color(0xFF222831),
      ),
    );
  }
}

