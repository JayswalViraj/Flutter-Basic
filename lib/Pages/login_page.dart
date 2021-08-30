import 'dart:ui';

import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(child: Text("Login Page", style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.red,

        ),
        textScaleFactor: 3,)),
      ),
    );
  }
}

