import 'package:flutter/material.dart';
import 'screens/homescreen.dart';
import 'screens/loginscreen.dart';

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
        "/": (context) => const LoginScreen(),
        //if we use this (default route, means we have to remove home: from top, because we can't repeat)
        "/tologin": (context) => const LoginScreen(),
      },
    );
  }
}
