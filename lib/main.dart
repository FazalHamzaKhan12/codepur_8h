import 'package:codepur_8h/Pages/home_page.dart';
import 'package:codepur_8h/Pages/login_page.dart';
import 'package:codepur_8h/Widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:codepur_8h/Utiitz/routes.dart';

void main() {
  runApp(MaterialApp(
    themeMode: ThemeMode.light,
    theme: MyTheme.lightTheme,
    darkTheme: MyTheme.darkTheme,
    debugShowCheckedModeBanner: false,
    initialRoute: MyRoutes.homeRoute  ,
    routes: {
      "/": (context) => HomePage(),
      MyRoutes.homeRoute: (context) =>  HomePage(),
      MyRoutes.loginRoute: (context) => LoginPage(),
    },
  ));
}
