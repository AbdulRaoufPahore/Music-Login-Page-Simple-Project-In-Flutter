// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../pages/myroutes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool pressedButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToMusicHome(BuildContext) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        pressedButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        pressedButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(   
            children: [
              Image.asset(
                'images/login.png',
                fit: BoxFit.cover,
                height: 300,
                width: double.infinity,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to ',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ' Music Player ',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue.shade300,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    errorStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    contentPadding: EdgeInsets.only(
                      right: 10,
                      left: 10,
                    ),
                    hintText: 'Username',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                    labelText: 'Name',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    suffixIcon: Icon(
                      Icons.account_circle,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return ' Username can\'t b empty';
                    } else {
                      null;
                    }
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    errorStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    hintText: 'Enter password',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    suffixIcon: Icon(Icons.visibility_off),
                    contentPadding: EdgeInsets.only(right: 10, left: 10),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    } else if (value.length <= 7) {
                      return 'Password length should be atleast 8 ';
                    }
                  },
                ),
              ),
              SizedBox(
                height: 35,
              ),
              InkWell(
                onTap: () => moveToMusicHome(context),
                child: AnimatedContainer(
                  // curve: Curves.slowMiddle,
                  // constraints: BoxConstraints.expand(height: 50, width: 100),
                  duration: Duration(
                    seconds: 1,
                  ),
                  width: pressedButton ? 60 : 150,
                  height: pressedButton ? 60 : 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius:
                          BorderRadius.circular(pressedButton ? 50 : 10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(6, 6),
                          color: Colors.black,
                          blurRadius: 15,
                          spreadRadius: 1,
                        )
                      ]),
                  child: pressedButton
                      ? Icon(
                          Icons.music_note,
                          size: 40,
                          color: Colors.white,
                        )
                      : Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
