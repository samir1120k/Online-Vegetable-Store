import 'package:flutter/foundation.dart';
import 'package:test_2/Models/store.dart';

class CartModel {
  static final cartmodel = CartModel._internal();

  CartModel._internal();

  factory CartModel() => cartmodel;

  late CatlogModel _catalog;

// collection of ids--store id of each items
  final List<int> _itemIds = [];

  CatlogModel get catalog => _catalog;
  set catalog(CatlogModel newCatalog) {
    assert(newCatalog != Null);
    _catalog = newCatalog;
  }

// get item in the cart

  List get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // add items

  void add(Item item) {
    _itemIds.add(item.id);
  }

  // remove items
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
