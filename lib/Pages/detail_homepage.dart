import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../Models/catalog.dart';

class DetailHomepage extends StatelessWidget {
  const DetailHomepage({super.key, required this.catalog})
      : assert(catalog != null);

  final Item catalog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white70,),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: OverflowBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}".text.color(Colors.red.shade800).bold.xl4.make(),
            ElevatedButton(onPressed: (){},
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.black87),
                    shape: WidgetStateProperty.all(const StadiumBorder())
                ),
                child: "Add to cart".text.color(Colors.white).make()).wh(120, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                  color: Colors.white70,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.bold.xl4.color(Colors.blue).make(),
                      catalog.desc.text.xl
                          .textStyle(context.captionStyle)
                          .make(),
                      "this is an iphone all are good things this only dummy text i will add to this so it good like better result idk why i write this faltu english".text.textStyle(context.captionStyle).size(15).make().p16()
                    ],
                  ).p64(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
