import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_2/Models/cart.dart';
import 'package:test_2/Models/store.dart';
import 'package:test_2/core/store1.dart';
import 'package:test_2/utils/routes.dart';
import 'package:test_2/widgets/home_widgets/Catalog_header.dart';
import 'package:test_2/widgets/home_widgets/Catalog_list.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    CatlogModel.items = List.from(productsData)
        .map<Item>((item) => Item.formMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: VxBuilder(
        mutations: {AddMutation, RemoveMutation},
        builder: (context, store, status) => FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoutes),
          backgroundColor: context.theme.focusColor,
          child: Icon(
            CupertinoIcons.cart,
            color: Colors.white,
          ),
        ).badge(
            color: Vx.blue500,
            size: 20,
            count: _cart.items.length,
            textStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              catalogHeader(),
              if (CatlogModel.items != (null) && CatlogModel.items.isNotEmpty)
                CatalogList().py16().expand()
              else
                Center(
                  child: CircularProgressIndicator().centered().expand(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
