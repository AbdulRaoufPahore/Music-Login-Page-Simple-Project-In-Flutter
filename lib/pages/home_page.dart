// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:widgetdays/pages/myroutes.dart';
import './my_drawer.dart';

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
          'Music Player   🎶',
          //Style of appbar text
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.black,
          ),
        ),

        iconTheme: IconThemeData(
          size: 30,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to $days days of Flutter",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, MyRoutes.loginRoute);
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.black),
                elevation: WidgetStatePropertyAll(10),
                shadowColor: WidgetStatePropertyAll(
                  Colors.black,
                ),
              ),
              child: Text(
                'Back',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
      // Drawer
      drawer: MyDrawer(),
    );
  }
}
