// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ChatBox",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50, right: 5, left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
                child: ListView(
                  padding: EdgeInsets.only(left: 10),
                  scrollDirection: Axis.horizontal,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Message",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.5,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Unread Message",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.5,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Notification",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.5,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Profile",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 150,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                top: 15,
                left: 25,
                right: 25,
              ),
              height: 220,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Favourite Contact",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.5,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Icon(Icons.more_horiz),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                          buildContactAvatar("Raju", "wtsp.jpg"),
                          buildContactAvatar("Karan", "vinndhyachal.jpeg"),
                          buildContactAvatar("Rohan", "twit.png"),
                          buildContactAvatar("Mohit", "inst.jpg"),
                          buildContactAvatar("Lalit", "login.png"),
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 330,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: ListView(
                padding: EdgeInsets.only(left: 10),
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              UserAvatar(filename: "login.png"),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Raj",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Hello!,How are you.",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 25),
                            child: Column(
                              children: [
                                Text("15:34", style: TextStyle(fontSize: 10)),
                                CircleAvatar(
                                  radius: 7,
                                  backgroundColor: Colors.redAccent,
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Padding buildContactAvatar(String name, String filename) {
  return Padding(
    padding: EdgeInsets.only(right: 20),
    child: Column(
      children: [
        UserAvatar(filename: "login.png"),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(
            color: Colors.black,
            fontSize: 13.5,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
  );
}

// Padding buildContactAvatar(String name, String filename) {
//   return Padding(
//     padding: EdgeInsets.only(right: 20),
//     child: Column(
//       children: [
//         UserAvatar(filename: "login_png.png"),
//         SizedBox(
//           height: 5,
//         ),
//         Text(name, style: TextStyle(color: Colors.white, fontSize: 16))
//       ],
//     ),
//   );
// }

Column buildConversationRow(
  String name,
  String message,
  String filename,
  int msgcount,
) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              UserAvatar(filename: "login.png"),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    message,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 25, top: 5),
            child: Column(children: [
              Text(
                "12:30",
                style: TextStyle(fontSize: 15),
              ),
              CircleAvatar(
                radius: 9,
                backgroundColor: Colors.pink.shade100,
                child: Text(
                  msgcount.toString(),
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              )
            ]),
          )
        ],
      )
    ],
  );
}

class UserAvatar extends StatelessWidget {
  final String filename;
  const UserAvatar({super.key, required this.filename});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.black,
      child: CircleAvatar(
        radius: 28,
        backgroundImage: Image.asset("assets/images/$filename").image,
      ),
    );
  }
}
