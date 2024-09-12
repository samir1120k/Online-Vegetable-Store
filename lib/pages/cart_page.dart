import "package:flutter/material.dart";
import "package:velocity_x/velocity_x.dart";

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.theme.focusColor,
        title: "Cart".text.make(),
      ),
    );
  }
}
