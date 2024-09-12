import 'package:flutter/material.dart';
import 'package:test_2/Models/store.dart';
import 'package:test_2/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetialsPage extends StatelessWidget {
  final Item catalog;
  const HomeDetialsPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.theme.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: Row(
          children: [
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}".text.bold.xl4.make(),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(context.theme.focusColor),
                  ),
                  child: "Buy".text.color(Mytheme.creamColor).make(),
                ).wh(150, 50).pOnly(left: 70)
              ],
            ),
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: Image.asset(catalog.image),
          ).h32(context),
          Expanded(
              child: VxArc(
            height: 20.0,
            arcType: VxArcType.convey,
            edge: VxEdge.top,
            child: Container(
              color: context.cardColor,
              width: context.screenWidth,
              child: Column(
                children: [
                  catalog.name.text.xl4
                      .color(context.theme.hintColor)
                      .bold
                      .make(),
                  catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                ],
              ).py64(),
            ),
          ))
        ]),
      ),
    );
  }
}
