import 'package:codepur_8h/Models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.item}) : assert(item != null);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.5,
      child: ListTile(
        onTap: (){

          print("\$${item.name}");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold,fontSize: 12),
        ),
      ),
    );
  }
}
