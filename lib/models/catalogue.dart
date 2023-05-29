class Item {
  final String id;
  final String name;
  final String description;
  final num price;
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

final products = [
  Item(
    color: "#33505a",
    description: "I am a Developer",
    id: "43",
    name: "Krishna Gupta",
    price: 99999,
    imageURl: "http://",
  ),
];
