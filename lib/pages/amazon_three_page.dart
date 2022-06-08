import 'package:amazon_page/pages/amazon_page.dart';
import 'package:amazon_page/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'sign_up_page.dart';

class AmazonUiPage extends StatefulWidget {

  static const id = "amazon_page";
  const AmazonUiPage({Key? key}) : super(key: key);

  @override
  State<AmazonUiPage> createState() => _AmazonUiPageState();
}

class _AmazonUiPageState extends State<AmazonUiPage> {
  TextEditingController emailControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();

  _doSignIn() {
    String email = emailControler.text;
    String password = passwordControler.text;
    if (email.isNotEmpty && password.isNotEmpty) {
      Navigator.pushReplacementNamed(context, Home1Page.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Amazon',
                style: TextStyle(
                  fontSize: 45,
                  fontFamily: 'FontsFree-Net-Billabong',
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[200]),
                child: TextField(
                  controller: emailControler,
                  style: const TextStyle(fontSize: 16),
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.teal,
                        ),
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      )),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[200]),
                child: TextField(
                  controller: passwordControler,
                  obscureText: true,
                  style: const TextStyle(fontSize: 16),
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.teal,
                        ),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      )),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                width: double.infinity,
                height: 48,
                child: FlatButton(
                  onPressed: _doSignIn,
                  color: Colors.red,
                  textColor: Colors.white,
                  child: const Text(
                    "Log in",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, SignUpPage.id);
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
