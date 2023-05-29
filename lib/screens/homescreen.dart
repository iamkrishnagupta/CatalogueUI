import 'package:flutter/material.dart';
import '../models/catalogue.dart';
import '../widgets/drawer.dart';
import '../widgets/itemwidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Catalogue App"),
          centerTitle: true,
        ),
        drawer: const DrawerWidget(),
        body: ListView.builder(
            itemCount: CatalogueModel.items.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item : CatalogueModel.items[index],
              );
            }));
  }
}
