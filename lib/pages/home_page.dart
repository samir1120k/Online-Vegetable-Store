import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_2/Models/store.dart';
import 'package:test_2/widgets/drawer.dart';
import 'package:test_2/widgets/item_widget.dart';

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
    final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    final decodeData=jsonDecode(catalogJson);
    var productsData=decodeData["products"];j
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app bar"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatlogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatlogModel.items[index],
            );
          },
        ),
      ),
      drawer: myDrawer(),
    );
  }
}
