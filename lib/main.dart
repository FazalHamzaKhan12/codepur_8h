import 'package:codepur_8h/Pages/home_page.dart';
import 'package:codepur_8h/Pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/home",
    routes: {
      "/": (context) => LoginPage(),
      "/home": (context) => HomePage(),
      "/login": (context) => LoginPage(),
    },
  ));
}
