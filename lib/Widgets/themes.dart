import 'package:flutter/material.dart';


class MyTheme{
  static ThemeData get darkTheme =>ThemeData(
  primarySwatch: Colors.deepPurple,
  appBarTheme: AppBarTheme(
  color: Colors.black,
  elevation: 0.0,
  iconTheme: IconThemeData(color: Colors.black),));

  static ThemeData get lightTheme =>ThemeData(
    primarySwatch: Colors.deepPurple,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
  );
}