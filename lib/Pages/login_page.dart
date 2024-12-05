import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Column(
      children: [Image.asset("assets/images/login_img.png",fit: BoxFit.cover,),
      Text("Welcome Back",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,),)],
    ));
  }
}
