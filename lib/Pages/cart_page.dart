import 'package:codepur_8h/Pages/detail_homepage.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,title: "Cart".text.bold.make(),centerTitle: true
        ,),
      backgroundColor: Colors.white,

    );
  }
}
