
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class registrationRoute extends StatelessWidget{
  const registrationRoute({super.key});
  
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Registration"),
      ),
    );
  } 

}