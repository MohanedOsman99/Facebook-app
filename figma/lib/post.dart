import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class post extends StatelessWidget {
  const post({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true, // Allow ListView to be inside a Column
            physics:
                NeverScrollableScrollPhysics(), // Disable its own scrolling
            itemCount: 5, // Number of posts to repeat
            itemBuilder: (context, index) {
              return Column(
                children: [
                  // Post header
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('asset/rootepost.png'),
                          radius: 35,
                        ),
                      ),
                      Flexible(child: Image.asset('asset/Frame 4.png')),
                      SizedBox(width: 200),
                      Flexible(child: Image.asset('asset/roote.png')),
                    ],
                  ),
                  SizedBox(height: 10),

                  // Post content
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Image.asset('asset/rout.png'),
                  ),
                  SizedBox(height: 11),

                  // Post actions
                  Row(
                    children: [
                      Image.asset(
                        'asset/liked.png',
                        height: 80,
                        width: 150,
                      ),
                      Spacer(),
                      Image.asset(
                        'asset/saved.png',
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
