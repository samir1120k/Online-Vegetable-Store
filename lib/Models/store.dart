class CatlogModel {
  static final items = [
    Item(
        id: 1,
        name: 'Cat 1',
        desc: 'This is cat 1',
        price: 49,
        image: 'assets/images/cat.png',
        color: '#9864EC'),
  ];
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
}
