import 'package:codepur_8h/Pages/home_page.dart';
import 'package:codepur_8h/Pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:codepur_8h/Utiitz/routes.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/homeRoute",
    routes: {
      "/": (context) => HomePage(),
      MyRoutes.homeRoute: (context) => const HomePage(),
      MyRoutes.loginRoute: (context) => LoginPage(),
    },
  ));
}
