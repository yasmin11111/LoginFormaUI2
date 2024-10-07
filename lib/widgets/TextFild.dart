// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class WidFiled extends StatelessWidget {
  String T;
  IconData I;


   WidFiled({required this.T,required this.I}  );
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Color(0xfff4abab),
          )),
      child: ListTile(
        title: Text("$T"),
        leading: Icon(
          I,
          color: Color(0xfff4abab),
        ),
      ),
    );
  }
}
