import 'package:flutter/material.dart';

class emailField extends StatelessWidget {
  static const String routeName = '/LoginButton';
  final TextEditingController email;

  emailField({required this.email});
  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

    return TextField(
      obscureText: false,
      controller: email,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
  }
}
