// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetdays/pages/myroutes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade300,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            accountName: Text(
              'Abdul Rauf ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            accountEmail: Text(
              'abdulrauf45@gmail.com',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade300,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/profile.png'),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.music_note_list,
              size: 35,
              color: Colors.black,
            ),
            title: Text(
              'Lists',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            subtitle: Text(
              '45 songs',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.music_note_2,
              color: Colors.black,
              size: 35,
            ),
            title: Text(
              'Songs',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.person_circle,
              color: Colors.black,
              size: 35,
            ),
            title: Text(
              'Artists',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '5 artists',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.folder_badge_plus,
              color: Colors.black,
              size: 35,
            ),
            title: Text(
              'Albums',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '10 albums',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              CupertinoIcons.star_circle_fill,
              color: Colors.black,
              size: 35,
            ),
            title: Text(
              'My Favourites',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '25 song',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 90,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, MyRoutes.loginRoute);
                  },
                  child: Text(
                    'Log Out !',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
