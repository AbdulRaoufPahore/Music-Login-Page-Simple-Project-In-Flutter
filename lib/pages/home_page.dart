// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar

      appBar: AppBar(
        // Titile to be Center  used a centerTitle ( bool either true(titile in center) or false(titile not in center))
        centerTitle: true,
        title: Text(
          'Catalog App',
          //Style of appbar text
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        // Background color of the appbar
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text(
          "Welcome to $days days of Flutter",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      // Drawer
      drawer: Drawer(
        //Background color of drawer .
        backgroundColor: Colors.amber,
      ),
    );
  }
}
