import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "App",
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Container(
        child: Center(child: Text("Hii flutter")),
      ),
    );
  }
}
