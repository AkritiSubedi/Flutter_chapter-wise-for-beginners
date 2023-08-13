// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:beginners/bg_Image.dart';
import 'package:beginners/drawer.dart';
import 'package:beginners/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'change_name_card.dart';

void main() {
  runApp(
    MaterialApp(
      title: "App",
      home: Homepage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    ),
  );
}

