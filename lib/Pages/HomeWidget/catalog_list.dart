import 'package:codepur_8h/Pages/detail_homepage.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../Models/catalog.dart';
import 'catalog_images.dart';


class CatalogItem extends StatelessWidget {
  const CatalogItem({super.key, required this.catalog});
  final Item catalog;

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: CatalogImage(
                image: catalog.image,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  catalog.name.text.bold.lg.color(Colors.blue).make(),
                  catalog.desc.text.textStyle(context.captionStyle).make(),
                  const SizedBox(height: 10,),
                  OverflowBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "\$${catalog.price}".text.bold.xl.make(),
                      ElevatedButton(onPressed: (){},
                          style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(Colors.black87),
                              shape: WidgetStateProperty.all(const StadiumBorder())
                          ),
                          child: "Add To Cart".text.size(12.0).color(Colors.white).make())
                    ],
                  )
                ],
              ),
            ),
          ],
        )).white.roundedLg.square(150).make().p16();
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CatalogModel.items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailHomepage(catalog: catalog))),
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}