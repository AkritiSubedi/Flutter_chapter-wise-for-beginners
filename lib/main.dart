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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              color: Colors.black,
              width: 200,
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                  padding: EdgeInsets.all(8),
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  width: 100,
                  height: 100,
                  color: Colors.purple,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
