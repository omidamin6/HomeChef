import 'package:flutter/material.dart';

class passwordField extends StatelessWidget {
  static const String routeName = '/LoginButton';
  final TextEditingController password;

  passwordField({required this.password});
  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
    return TextField(
      obscureText: true,
      style: style,
      controller: password,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
  }
}
