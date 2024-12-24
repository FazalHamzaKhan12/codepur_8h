import 'package:flutter/material.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          "Catalog App",
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 44,
              fontWeight: FontWeight.bold),
        ),
         Text(
          "Trending Products",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 22,
          ),
        ),
      ],
    );
  }
}
