// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:homechef/LoginButton.dart';
import 'package:homechef/SignUp.dart';
import 'package:homechef/authenticator.dart';
import 'package:homechef/RegisterRoute.dart';
import 'emailField.dart';
import 'passwordField.dart';
import 'SignUp.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FirebaseAuth auth = FirebaseAuth.instance;
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Center(
            child: Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 45.0),
            emailField(email: email),
            SizedBox(height: 25.0),
            passwordField(password: password),
            SizedBox(height: 35.0),
            LoginButton(email: email.text, password: password.text),
            SizedBox(height: 35.0),
            SignUp(),
            SizedBox(height: 15.0),
          ],
        ),
      ),
    )));
  }

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
}
