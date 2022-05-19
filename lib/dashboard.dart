import 'package:flutter/material.dart';
import 'login.dart';
import 'styles.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreen();
}

class _DashboardScreen extends State<DashboardScreen> {

  Widget buildLogoutBtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3),
      alignment: Alignment.center,
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {
          // prefdata.setBool('login', true);
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const LoginScreen()),
                  (route) => false);
        },
        padding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        color: const Color(0xFFDBE2EF),
        child: const Text(
          'Logout',
          style: buttonText,
        ),
      ),
    );
  }

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
            const Text(
              'Welcome to',
              textAlign: TextAlign.center,
              style: dashboardTitle1,
            ),
            const Text(
              'Soil Health Monitor App',
              textAlign: TextAlign.center,
              style: dashboardTitle2,
            ),
            buildLogoutBtn(),
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
                children: const <Widget> [
                  SizedBox(height: 30),
                  Text(
                    'Soil pH',
                    style: dataTitle,
                  ),
                  SizedBox(height: 20),
                  Text(
                    '8.37',
                    style: dataValue,
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
                children: const <Widget> [
                  SizedBox(height: 20),
                  Text(
                    'Soil Moisture',
                    style: dataTitle,
                  ),
                  SizedBox(height: 20),
                  Text(
                    '50.25',
                    style: dataValue,
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
                children: const <Widget> [
                  SizedBox(height: 20),
                  Text(
                    'Soil Temperature',
                    style: dataTitle,
                  ),
                  SizedBox(height: 20),
                  Text(
                    '50.25°C',
                    style: dataValue,
                  ),
                  Text(
                    '114.14°F',
                    style: dataValue,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget> [
              Text(
                'START',
                style: startStyle,
              ),
              Text(
                ' / ',
                style: btnStyle,
              ),
              Text(
                'STOP',
                style: stopStyle,
              ),
              Text(
                ' CONNECTION',
                style: btnStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }

}