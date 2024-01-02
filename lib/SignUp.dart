import 'package:flutter/material.dart';
import 'emailField.dart';
import 'passwordField.dart';
import 'firstName.dart';
import 'lastName.dart';
import 'authenticator.dart';

class SignUp extends StatelessWidget {
  static const String routeName = '/LoginButton';
  @override
  Widget build(BuildContext context) {
    final TextEditingController email = TextEditingController();
    final TextEditingController password = TextEditingController();
    final myButton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.black,
        child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            textColor: Colors.white,
            child: Text("Sign Up"),
            onPressed: () {
              // var result = await Authenticator()
              //     .signUp(email: email.text, password: password.text);
              // if (result) {
              Navigator.pop(context); // returning user to login page
              // }
            }));

    return Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.black,
        child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            textColor: Colors.white,
            child: Text("Create An Account"),
            onPressed: () {
              // Changing routes

              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
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
                          firstName(),
                          SizedBox(
                            height: 25.0,
                          ),
                          lastName(),
                          SizedBox(height: 25.0),
                          emailField(
                            email: email,
                          ),
                          SizedBox(height: 25.0),
                          passwordField(password: password),
                          SizedBox(height: 25.0),
                          myButton,
                        ],
                      ),
                    ),
                  )));
                },
              ));
            }));
  }
}
