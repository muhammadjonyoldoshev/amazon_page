import 'package:flutter/material.dart';

class AmazonPage extends StatefulWidget {
  static const id = "/amazon";

  const AmazonPage({Key? key}) : super(key: key);

  @override
  State<AmazonPage> createState() => _AmazonPageState();
}

class _AmazonPageState extends State<AmazonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 300,left: 160),
            height: 200,
            width: 100,
            child: const Image(
              image: AssetImage('assets/images/img.png'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 320,left: 160),
            child: const Text("From Amazon"),
          ),
        ],
      ),
    );
  }
}
