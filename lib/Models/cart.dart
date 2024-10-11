import 'package:test_2/Models/store.dart';
import 'package:test_2/core/store1.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
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
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(Item catalog, {required this.item});
  @override
  perform() {
    store?.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(Item catalog, {required this.item});
  @override
  perform() {
    store?.cart._itemIds.remove(item.id);
  }
}
