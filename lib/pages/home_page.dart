import 'package:flutter/material.dart';
import 'package:test_2/Models/store.dart';
import 'package:test_2/widgets/drawer.dart';
import 'package:test_2/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
