// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:login_signup/screens/Login.dart';
import 'package:login_signup/widgets/TextFild.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return loginHome();
                },
              ));
            },
            child: Icon(
              Icons.arrow_back,
              color: Color(0xffe15d61),
              size: 30,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, right: 20),
            child: Icon(
              Icons.notifications_outlined,
              color: Color(0xffe15d61),
            ),
          )
        ],
        toolbarHeight: 40,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40))),
        backgroundColor: Color(0xffdeecec),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(
              "BackToLogin",
              style: TextStyle(
                  color: Color.fromARGB(255, 112, 110, 110), letterSpacing: 2),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Si",
              // ignore: prefer_const_constructors
              style: TextStyle(
                  color: Color(0xffe79424),
                  fontSize: 80,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "gn",
              style: TextStyle(
                  color: Color(0xffe15d61),
                  fontSize: 80,
                  fontWeight: FontWeight.bold),
            ),
          ]),
          WidFiled(T: "Name", I: Icons.person),
          SizedBox(
            height: 20,
          ),
          WidFiled(T: "Email Address", I: Icons.email_outlined),
          SizedBox(
            height: 20,
          ),
          WidFiled(T: "Password", I: Icons.lock_outline),
          SizedBox(
            height: 20,
          ),
          WidFiled(T: "Conf Password", I: Icons.lock_outline),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return loginHome();
                },
              ));
            },
            child: Container(
              height: 40,
              width: 370,
              child: Center(
                child: Text(
                  "Sign UP",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      colors: [Color(0xfffe8409), Color(0xfffc293c)])),
            ),
          ),
        ],
      ),
    );
  }
}
