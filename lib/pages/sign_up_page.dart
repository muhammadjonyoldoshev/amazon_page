import 'package:flutter/material.dart';
class SignUpPage extends StatefulWidget {
  static const id="sign_up";
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome to Sing Up"),
      ),
    );
  }
}