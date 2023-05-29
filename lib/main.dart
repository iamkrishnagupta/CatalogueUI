import 'package:flutter/material.dart';
import 'screens/homescreen.dart';
import 'screens/loginscreen.dart';
import 'utils/routes.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.pink, 
      ),
      // home: HomeScreen(),
      routes: {
        "/": (context) => const HomeScreen(),
        //if we use this (default route, means we have to remove home: from top, because we can't repeat)
        MyRoutes.loginRoute: (context) => const LoginScreen(), 
        MyRoutes.homeRoute: (context) => const HomeScreen(),
      },
    );
  }
}
