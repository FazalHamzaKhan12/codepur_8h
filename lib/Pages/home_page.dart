import 'dart:convert';

import 'package:codepur_8h/Models/catalog.dart';
import 'package:codepur_8h/Widgets/drawer.dart';
import 'package:codepur_8h/Widgets/itemwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData()async{
    final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    final decodeJson = jsonDecode(catalogJson);
    var productsData = decodeJson["products"];
    print(productsData);

  }
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(8, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Catgalog"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
              );
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
