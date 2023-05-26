import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const myColor = Color.fromARGB(255, 107, 92, 152);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalogue App"),
        centerTitle: true,
        backgroundColor: myColor,
      ),
      drawer: const Drawer(),
      body: const Center(
        child: Text("Welcome 2 Catalogue!"),
      ),
    );
  }
}
