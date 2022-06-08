import 'package:flutter/material.dart';
class AmazonTwoPage extends StatefulWidget {
  static const id = "/amazon two_page";
  const AmazonTwoPage({Key? key}) : super(key: key);

  @override
  State<AmazonTwoPage> createState() => _AmazonTwoPageState();
}

class _AmazonTwoPageState extends State<AmazonTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Amazon", style: TextStyle(fontFamily: 'FontsFree-Net-Billabong',fontSize: 56),),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text("Welcome to Amazon", style: TextStyle(fontSize: 35),
        ),
      ),
    );
  }
}
