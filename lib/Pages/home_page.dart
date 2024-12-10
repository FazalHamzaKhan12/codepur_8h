import 'package:codepur_8h/Widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("New App"),
        backgroundColor: Colors.blue,
      ),
      body: const Center(child: Text("Welcome To Hamza")),
      drawer: MyDrawer(),
    );
  }
}
