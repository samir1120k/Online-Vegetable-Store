import 'dart:convert';

class CatlogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: 'Cat 1',
        desc: 'This is cat 1',
        price: 49,
        image: 'assets/images/cat.png',
        color: '#9864EC'),
  ];

  static getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  static getByPosition(int pos) => items[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.formMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      name: map['name'],
      desc: map['desc'],
      price: map['price'],
      color: map['color'],
      image: map['image'],
    );
  }

  tomap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image
      };
}
