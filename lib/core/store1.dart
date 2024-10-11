import 'package:test_2/Models/cart.dart';
import 'package:test_2/Models/store.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  late CatlogModel catalog;
  late CartModel cart;

  MyStore() {
    catalog = CatlogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
