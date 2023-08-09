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
        body: Center(
            child: Container(
          padding: EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    offset: Offset(2.0, 10.0)),
              ],
              color: Colors.amber,
              gradient: LinearGradient(colors: [Colors.purple, Colors.pink])),
          width: 100,
          height: 100,
          child: Text(
            "Box",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        )));
  }
}
