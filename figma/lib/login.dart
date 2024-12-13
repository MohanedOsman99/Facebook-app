import 'package:figma/home.dart';
import 'package:figma/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginscreen extends StatelessWidget {
  const loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Image.asset(
                  'asset/Logo (1).png',
                  height: 110,
                  width: 110,
                ),
              ),
              Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: SingleChildScrollView(
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: 'Mobile Number or Email Address',
                                    labelStyle: TextStyle(fontSize: 14),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    )),
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(fontSize: 14),
                                suffixIcon: Icon(Icons.visibility_off),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(
                                          context, "home");
                                    },
                                    icon: Container(
                                        height: 60,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Color(0xffba1877F2),
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        child: Center(
                                            child: IconButton(
                                          onPressed: () {},
                                          icon: Text(
                                            'Login',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ))))),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Forgotten Password ?',
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff898F9C)),
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: IconButton(
                              onPressed: () {},
                              icon: Container(
                                  height: 60,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xffba1877F2), width: 2),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25)),
                                  child: Center(
                                    child: Text(
                                      'Create Acount',
                                      style:
                                          TextStyle(color: Color(0xffba1877F2)),
                                    ),
                                  )))),
                    ],
                  ),
                  Image.asset(
                    'asset/Meta Logo.png',
                    height: 100,
                    width: 150,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
