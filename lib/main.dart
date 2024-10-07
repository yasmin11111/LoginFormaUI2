// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login_signup/screens/Login.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginHome(),
    );
  }
}
