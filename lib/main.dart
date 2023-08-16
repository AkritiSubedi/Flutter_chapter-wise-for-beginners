// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:beginners/pages/home_page.dart';
import 'package:beginners/pages/login_page.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(
    MaterialApp(
      title: "App",
      home: Loginpage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        "/login":(context) => Loginpage(),
        "/home":(context) => Homepage()
      },
    ),
  );
}

