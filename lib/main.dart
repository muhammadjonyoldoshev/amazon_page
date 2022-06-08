import 'package:amazon_page/pages/amazon_four_page.dart';
import 'package:amazon_page/pages/amazon_page.dart';
import 'package:amazon_page/pages/amazon_three_page.dart';
import 'package:amazon_page/pages/amazon_two_page.dart';
import 'package:amazon_page/pages/home_page.dart';
import 'package:amazon_page/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const AmazonUi2Page(),
      routes: {
        AmazonPage.id: (context) => const AmazonPage(),
        AmazonTwoPage.id: (context) => const AmazonTwoPage(),
        AmazonUiPage.id: (context) => const AmazonUiPage(),
        AmazonUi2Page.id: (context) => const AmazonUi2Page(),
        SignUpPage.id: (context) => const SignUpPage(),
        Home1Page.id: (context) => const Home1Page(),
      },
    );
  }
}

