class Item {
  final int id;
  final String name;
  final String description;
  final int price;

  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    //factory allows to change constucrtiors
    return Item(
      id: map["id"],
      name: map["name"],
      price: map["price"],
      description: map["description"],
    );
    
  }
   //opposite now, to map
  tomap() => {
     "id": id,
      "name": name,
      "price": price,
      "description": description,
  };
}

class CatalogueModel {
  static List<Item> items = [
    Item(
      description: "I am an Expert",
      id: 3,
      name: "Krishna Gupta",
      price: 99999,
    ),
  ];
}
