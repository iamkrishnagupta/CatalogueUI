class Item {
  final String id;
  final String name;
  final String description;
  final int price;
  final String color;
  final String imageURl;

  Item(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.color,
      required this.imageURl});
}

class CatalogueModel {
  static final items = [
    Item(
      color: "#33505a",
      description: "I am a Developer",
      id: "43",
      name: "Krishna Gupta",
      price: 99999,
      imageURl: 'https://avatars.githubusercontent.com/u/108782234?s=40&v=4',
    ),
  ];
}
