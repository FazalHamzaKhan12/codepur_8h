import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        centerTitle: true,
        title: Text("New App"),
        backgroundColor: Colors.blue,
      ),
      body: Center(child: Text("Welcome To Hamza")),
    );
  }
}
