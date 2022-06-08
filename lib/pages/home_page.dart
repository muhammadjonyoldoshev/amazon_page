import 'package:flutter/material.dart';
class Home1Page extends StatefulWidget {
  static const id="sign_up";
  const Home1Page({Key? key}) : super(key: key);

  @override
  State<Home1Page> createState() => _Home1PageState();
}

class _Home1PageState extends State<Home1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome to Sing In"),
      ),
    );
  }
}