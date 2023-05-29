// ignore_for_file: prefer_const_constructors
import "package:flutter/material.dart";

import "../utils/routes.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String user = "";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.jpg",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Welcome! $user',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 50.0,
                  vertical: 10.0,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (userInput) {
                        user = userInput;
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter your user ID',
                        labelText: 'User ID',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Username can\'t be empty';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        labelText: 'Password',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password can\'t be empty';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 66, 147, 229),
                        minimumSize: Size(100, 45),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        }
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
