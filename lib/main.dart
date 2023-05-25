import 'package:catalogue_app/screens/homescreen.dart';
import 'package:catalogue_app/screens/loginscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MainApp(),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      routes: {
        "/": (context) => const HomeScreen(),
        //if we use this (default route, means we have to remove home: from top, because we can't repeat)
        "/tologin": (context) => const LoginScreen(),
      },
    );
  }
}
