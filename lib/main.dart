import 'package:codepur_8h/Pages/home_page.dart';
import 'package:codepur_8h/Pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:codepur_8h/Utiitz/routes.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/login",
    routes: {
      "/": (context) => LoginPage(),
      MyRoutes.homeRoute: (context) => HomePage(),
      MyRoutes.loginRoute: (context) => LoginPage(),
    },
  ));
}
