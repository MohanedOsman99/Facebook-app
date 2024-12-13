import 'package:figma/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6, // Match the number of tabs in TabBar
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Image.asset(
            'asset/Facebook (1).png', // Replace with your image path
            height: 50,
            width: 100,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add, color: Colors.black),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: Colors.black),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'asset/massenger.jpg', // Replace with your image path
                height: 20,
                width: 20,
              ),
            ),
          ],
          bottom: TabBar(
              indicatorColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.blue,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.blue,
                  ),
                ),
                Tab(icon: Icon(Icons.video_settings)),
                Tab(icon: Icon(Icons.store)),
                Tab(icon: Icon(Icons.person)),
                Tab(icon: Icon(Icons.notifications)),
                Tab(
                  icon: CircleAvatar(
                    backgroundImage: AssetImage('asset/Ellipse 1.png'),
                    radius: 35,
                  ),
                )
              ]),
        ),
        body: TabBarView(
          children: [
            Center(
                child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.photo_album),
                          labelText: 'what is in your mind',
                          labelStyle:
                              TextStyle(fontSize: 14, color: Color(0xff898F9C)),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(6),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('asset/Ellipse 1.png'),
                              radius: 7,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'asset/createstory.png',
                        height: 120,
                        width: 80,
                      ),
                      box(),
                      box2(),
                      box(),
                      Container(child: box2()),
                      Container(child: box2()),
                      Container(child: box2()),
                      Container(child: box2()),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                post(),
              ],
            )),
            Center(child: Text("Videos")),
            Center(child: Text("Store")),
            Center(child: Text("Profile")),
            Center(child: Text("Notifications")),
            Center(child: Text("account")),
          ],
        ),
      ),
    );
  }
}

Widget box() {
  return Image.asset(
    'asset/story1.png',
    height: 120,
    width: 80,
  );
}

Widget box2() {
  return Image.asset(
    'asset/story2.png',
    height: 120,
    width: 80,
  );
}
