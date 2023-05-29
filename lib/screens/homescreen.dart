import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

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
      body: const Center(
        child: Text("Welcome 2 Catalogue!"),
      ),
    );
  }
}
