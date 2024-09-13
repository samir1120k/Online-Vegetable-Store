import 'package:flutter/material.dart';
import 'package:test_2/Models/store.dart';
import 'package:test_2/pages/home_detail_page.dart';
import 'package:test_2/widgets/home_widgets/Catalog_header.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatlogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatlogModel.items[index];
          return InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeDetialsPage(catalog: catalog))),
              child: CatalogItem(catalog: catalog));
        });
  }
}
