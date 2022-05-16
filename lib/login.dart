import 'package:flutter/material.dart';
import 'package:soil_monitoring_system/dashboard.dart';
import 'package:soil_monitoring_system/signup.dart';
import 'styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  // form key
  final _formKey = GlobalKey<FormState>();

  // editing controller
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    // clean up the controller when the widget is disposed
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // username field
    final buildUsername = TextFormField(
      autofocus: false,
      controller: _usernameController,
      keyboardType: TextInputType.name,
      validator: (value) {
        // if (value!.isEmpty) {
        //   return ("Please enter your username.");
        // }
        // // reg expression for username validation
        // if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
        //     .hasMatch(value)) {
        //   return ("Username already taken.");
        // }
        // return null;
      },
      onSaved: (value) {
        _usernameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30)
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        prefixIcon: const Icon(
          Icons.account_circle,
          color: Color(0xFF222831),
        ),
        hintText: 'Username',
      ),
      style: loginValues,
    );

    // password field
    final buildPassword = TextFormField(
      autofocus: false,
      controller: _passwordController,
      obscureText: true,
      validator: (value) {
        RegExp regex = RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Please enter your password.");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter a valid password. Minimum of 6 characters.");
        }
      },
      onSaved: (value) {
        _passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        prefixIcon: const Icon(
            Icons.vpn_key,
            color: Color(0xFF222831)
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );

    // login button
    final loginButton = SizedBox(
      width: 165.75,
      child: Material(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xFFDBE2EF),
        child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => DashboardScreen()));          // getSql();
            // String username = _usernameController.text;
            // String userpassword = _passwordController.text;

            // if (username != '' && userpassword != '') {
            // print('Successful.');
            // prefdata.setBool('login', false);
            // prefdata.setString('username', username);
            //
            // signIn(usernameController.text, passwordController.text);
            // } else {
            // Fluttertoast.showToast(msg: "Enter missing login credentials.");
            // }
          },
          child: const Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: buttonText,
          ),
        ),
      ),
    );

    // sign up button
    final signupButton = SizedBox(
      width: 165.75,
      child: Material(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xFFDBE2EF),
        child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => SignUpScreen()));          // getSql();
            // String username = _usernameController.text;
            // String userpassword = _passwordController.text;

            // if (username != '' && userpassword != '') {
              // print('Successful.');
              // prefdata.setBool('login', false);
              // prefdata.setString('username', username);
              //
              // signIn(usernameController.text, passwordController.text);
              // } else {
              // Fluttertoast.showToast(msg: "Enter missing login credentials.");
            // }
          },
          child: const Text(
            'Sign Up',
            textAlign: TextAlign.center,
            style: buttonText,
          ),
        ),
      )
    );

    return Scaffold(
      backgroundColor: const Color(0xFF222831),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: const Color(0xFF222831),
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // const Image(
                    //   height: 200,
                    //   image: AssetImage('lib/images/soil_health_monitor_white.png'),
                    // ),
                    const Text(
                      'Soil Health Monitor',
                      style: splashTitle,
                    ),
                    const SizedBox(height: 25),
                    buildUsername,
                    const SizedBox(height: 25),
                    buildPassword,
                    const SizedBox(height: 35),
                    Row(
                      mainAxisSize:MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        loginButton,
                        const SizedBox(width: 20),
                        signupButton,
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

        ),
      ),

    );
  }

}