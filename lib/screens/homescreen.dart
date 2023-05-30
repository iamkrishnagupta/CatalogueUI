import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/catalogue.dart';
import '../widgets/drawer.dart';
import '../widgets/itemwidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    var cj = await rootBundle.loadString("catalogue.json");
    var decodedcj = jsonDecode(cj);
    var productsData = decodedcj["products"];
    CatalogueModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Catalogue App"),
          centerTitle: true,
        ),
        drawer: const DrawerWidget(),
        body: (CatalogueModel.items.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogueModel.items.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    item: CatalogueModel.items[index],
                  );
                })
            : const Center(
                child: CircularProgressIndicator(),
              ));
  }
}
