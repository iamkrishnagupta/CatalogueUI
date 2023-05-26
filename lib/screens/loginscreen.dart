// ignore_for_file: prefer_const_constructors
import "package:flutter/material.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login.jpg",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 15,
          ),
          Text('Welcome, Krishna!'),
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
                  decoration: InputDecoration(
                    hintText: 'Enter your user ID',
                    labelText: 'User ID',
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Enter your passwor',
                    labelText: 'Password',
                  ),
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
                    debugPrint('Login Pressed!');
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
    );
  }
}
