// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:beginners/pages/home_page.dart';
import 'package:beginners/pages/login_page.dart';
import 'package:beginners/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App",
      home: Constants.prefs.getBool("LoggedIn")== true
      ?Homepage() 
      : Loginpage(), 
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        "/login": (context) => Loginpage(),
        "/home": (context) => Homepage()
      },
    ),
  );
}
