import 'package:flutter/material.dart';
import 'package:test_2/Models/cart.dart';
import 'package:test_2/Models/store.dart';
import 'package:test_2/widgets/home_widgets/Catalog_image.dart';
import 'package:test_2/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class catalogHeader extends StatelessWidget {
  const catalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "Vegetable Store".text.xl4.bold.color(context.theme.hintColor).make(),
          "Fresh Vegetable"
              .text
              .color(context.theme.hintColor)
              .center
              .xl2
              .make(),
        ],
      ),
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({super.key, required this.catalog})
      : assert(catalog != (null));

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.color(context.theme.focusColor).bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}".text.bold.xl.make(),
                _AddToCart(catalog: catalog)
              ],
            ).pOnly(right: 8.0)
          ],
        ))
      ],
    )).color(context.theme.cardColor).rounded.square(150).make().py16();
  }
}

class _AddToCart extends StatefulWidget {
  final Item catalog;
  const _AddToCart({
    super.key,
    required this.catalog,
  });

  @override
  State<_AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<_AddToCart> {
  bool isAdded = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        isAdded = isAdded.toggle();
        final _catalog = CatlogModel();
        final _cart = CartModel();
        _cart.catalog = _catalog;
        _cart.add(widget.catalog);
        setState(() {});
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(context.theme.focusColor),
      ),
      child: isAdded
          ? Icon(Icons.done)
          : "Buy".text.color(Mytheme.creamColor).make(),
    );
  }
}
