import 'package:flutter/material.dart';

class lastName extends StatelessWidget {
  static const String routeName = '/LoginButton';
  @override
  Widget build(BuildContext context) {
    final TextEditingController password = TextEditingController();
    TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
    return TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Last Name",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
  }
}
