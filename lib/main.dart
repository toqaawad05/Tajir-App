import 'package:Tajir/loginscreen.dart';
import 'package:Tajir/signup.dart';
import 'package:Tajir/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
     const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My Flutter App')),
        body: Loginscreen()
      ),
    );
  }
}
