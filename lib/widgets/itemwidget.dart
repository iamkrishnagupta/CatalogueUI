import 'package:flutter/material.dart';

import '../models/catalogue.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});
  //Item class
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          debugPrint('Card Pressed! ');
        },
        leading: const Icon(Icons.heart_broken),
        title: Text(item.name),
        subtitle: Text(item.description),
        trailing: Text("${item.price}"),
      ),
    );
  }
}
