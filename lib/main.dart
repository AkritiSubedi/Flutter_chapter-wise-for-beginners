import 'package:flutter/material.dart';

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

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Container(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Akriti Subedi"), 
              accountEmail: Text("aakusubedi075@gmail.com"),
              currentAccountPicture:CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80"),
              ) ,
              ),
            ListTile(leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
            ),
            ListTile(leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.send),
            ),
            ListTile(leading: Icon(Icons.location_city),
            title: Text("Location"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.search),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
