import 'package:flutter/material.dart';
import 'package:testing_project/Button.dart';
import 'package:testing_project/InputWidget.dart';
import 'Screens/RegisterScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

