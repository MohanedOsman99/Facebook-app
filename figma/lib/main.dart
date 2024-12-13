import 'package:figma/home.dart';
import 'package:figma/login.dart';
import 'package:figma/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "login": (context) => loginscreen(),
        "home": (context) => homescreen(),
        "splash": (context) => splashscreen(),
      },
      initialRoute: "splash",
      debugShowCheckedModeBanner: false,
      home: splashscreen(),
    );
  }
}
