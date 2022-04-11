import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'styles.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreen();
}

class _DashboardScreen extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDBE2EF),
      appBar: AppBar(
        backgroundColor: const Color(0xFF222831),
        toolbarHeight: 150,
        title: Center(
          child: Column(
          children: <Widget>[
            Text(
              'Welcome to',
              textAlign: TextAlign.center,
              style: GoogleFonts.caveat(textStyle: dashboardTitle1),
            ),
            Text(
              'Soil Health Monitoring App',
              textAlign: TextAlign.center,
              style: GoogleFonts.staatliches(textStyle: dashboardTitle2),
            ),
          ],
        ),),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35), bottomRight: Radius.circular(35)),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget> [
              // SOIL PH
              Column(
                children: <Widget> [
                  const SizedBox(height: 20),
                  Text(
                    'Soil pH',
                    style: GoogleFonts.staatliches(textStyle: dataTitle),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    '8.37',
                    style: GoogleFonts.staatliches(textStyle: dataValue),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Divider(
                thickness: 1,
                indent: 125,
                endIndent: 125,
              ),
              const SizedBox(height: 20),
              // SOIL MOISTURE
              Column(
                children: <Widget> [
                  const SizedBox(height: 30),
                  Text(
                    'Soil Moisture',
                    style: GoogleFonts.staatliches(textStyle: dataTitle),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    '50.25',
                    style: GoogleFonts.staatliches(textStyle: dataValue),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Divider(
                thickness: 1,
                indent: 125,
                endIndent: 125,
              ),
              const SizedBox(height: 20),
              // SOIL TEMPERATURE
              Column(
                children: <Widget> [
                  const SizedBox(height: 30),
                  Text(
                    'Soil Temperature',
                    style: GoogleFonts.staatliches(textStyle: dataTitle),
                  ),
                  Text(
                    '(in Celsius)',
                    style: GoogleFonts.caveat(textStyle: dataCaption, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    '50.25',
                    style: GoogleFonts.staatliches(textStyle: dataValue),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        width: 100,
        decoration: const BoxDecoration(
          color: Color(0xFF222831),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35))
        ),
        height: 50,
        child: MaterialButton(
          onPressed: () {
            // connect
          },
          child: Text(
            'START CONNECTION',
            style: GoogleFonts.staatliches(textStyle: btnStyle),
          ),
        ),
      ),
    );
  }

}