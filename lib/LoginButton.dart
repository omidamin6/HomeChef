import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'authenticator.dart';
import 'RouteHome.dart';

class LoginButton extends StatelessWidget {
  static const String routeName = '/LoginButton';
  final String email;
  final String password;

LoginButton( { required this.email, required this.password});

  @override
  Widget build(BuildContext context) {

    return Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.black,
        child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            textColor: Colors.white,
            child: Text("Login"),
            onPressed: () async {
              var result = await Authenticator()
                  .signIn(email: email, password: password);
              if (result) {
                print('success');
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return RouteHome();
                    // 1. make this a page, make a class for login and extend it to register
                  },
                ));
              } else {
                print('fail');
              }
            }));
  }
}
