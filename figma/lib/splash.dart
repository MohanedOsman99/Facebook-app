import 'package:figma/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => loginscreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                'asset/Logo (1).png',
                height: 150,
                width: 150,
              ),
            ),
          ),
          Container(
            child: Text(
              'From',
              style: TextStyle(color: Color(0xff898F9C)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 7),
            child: Image.asset(
              'asset/Meta Logo.png',
              height: 50,
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}
