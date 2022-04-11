import 'dart:async';
import 'package:flutter/material.dart';
import 'package:soil_monitoring_system/dashboard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _gotoDashboard();
  }

  _gotoDashboard() async {
    await Future.delayed(Duration(milliseconds: 3000), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const DashboardScreen()));
    });
  }

  @override Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'Soil Health Monitor',
            style: GoogleFonts.staatliches(textStyle: splashTitle),
          ),
        ),
      ),
    );
  }
}