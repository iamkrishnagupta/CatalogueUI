// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const imageURL =
        'https://avatars.githubusercontent.com/u/108782234?s=40&v=4';
    return Drawer(
      backgroundColor: Colors.pink,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text('Krishna Gupta'),
              accountEmail: Text('krishna.gupta@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageURL),
              ),
              currentAccountPictureSize: Size(80, 80),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Home',
                textScaleFactor: 1.5,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.person_rounded,
              color: Colors.white,
            ),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Profile',
                textScaleFactor: 1.5,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.mark_email_unread_rounded,
              color: Colors.white,
            ),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Mail Me',
                textScaleFactor: 1.5,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
