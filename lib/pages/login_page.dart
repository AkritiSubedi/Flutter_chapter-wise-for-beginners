import 'package:beginners/bg_Image.dart';
import 'package:beginners/pages/home_page.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  void signIn() {
    // This function will be executed when the button is pressed
    // You can implement your sign-in logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            BgImage(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Form(
                          child: Card(
                            child: Form(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  children: <Widget>[
                                    TextFormField(
                                      decoration: InputDecoration(
                                          hintText: "Enter Username",
                                          labelText: "Username"),
                                    ),
                                    SizedBox(height: 20),
                                    TextFormField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          hintText: "Enter Password",
                                          labelText: "Password"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              //Navigator.push(
                              // context,
                              // MaterialPageRoute(
                              //   builder: (context) => Homepage()));
                              Navigator.pushNamed(context, "/home");
                            }, // Provide the function to execute here

                            child: Text("Sign In"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.purple,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
