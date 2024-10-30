// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:widgetdays/pages/my_drawer.dart';
import './pages/home_Page.dart';
import './pages/login_Page.dart';
import './pages/myroutes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '30 Days of flutter',
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      // initialRoute: '/login',
      routes: {
        '/': (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
         MyRoutes.loginRoute: (context) => LoginPage(), 
         MyRoutes.drawerRoute:(context)=>MyDrawer(), 
      },
    );
  }
}
