// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:login_signup/screens/SignUp.dart';
import 'package:login_signup/widgets/TextFild.dart';

class loginHome extends StatelessWidget {
  const loginHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Container(
                width: 380,
                height: 250,
                decoration: BoxDecoration(
                    color: Color(0xffdeecec),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Center(
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.menu,
                              color: Color(0xfff4abab),
                            ),
                            Text(
                              "LOGIN",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(
                              Icons.notifications_outlined,
                              color: Color(0xfff4abab),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        indent: 20,
                        endIndent: 20,
                        color: Color(0xfff4abab),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Wel",
                              style: TextStyle(
                                  color: Color(0xffe79424),
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "come",
                              style: TextStyle(
                                  color: Color(0xffe15d61),
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                      Text(
                        "Please Login To Continue",
                        style: TextStyle(
                            color: Color.fromARGB(255, 232, 160, 153)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            WidFiled(I: Icons.email_outlined, T: "Email"),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Color(0xfff4abab),
                  )),
              child: ListTile(
                title: Text("Password"),
                leading: Icon(
                  Icons.lock_outline,
                  color: Color(0xfff4abab),
                ),
                trailing:
                    Icon(Icons.visibility_outlined, color: Color(0xfff4abab)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forget Password ?",
                  style: TextStyle(color: Color.fromARGB(255, 244, 131, 131)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return SignUp();
                  },
                ));
              },
              child: Container(
                height: 40,
                width: 370,
                child: Center(
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        colors: [Color(0xfffe8409), Color(0xfffc293c)])),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Divider(
                    endIndent: 10,
                    indent: 10,
                  )),
                  Text("OR"),
                  Expanded(child: Divider(indent: 10, endIndent: 10)),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Do Create Your Acount ? ",
                    style: TextStyle(color: Colors.black, fontSize: 16)),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ));
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(color: Color.fromARGB(255, 217, 113, 113)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
