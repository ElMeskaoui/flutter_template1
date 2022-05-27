// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text("Top Story",
                                style: TextStyle(
                                    fontSize: 30.0,
                                    color: Color.fromARGB(255, 0, 0, 0))),
                            Text("25/02/2001",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Color.fromARGB(253, 180, 180, 180),
                                ))
                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage("imges/1.jpeg"),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                            right: 2,
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 1,
                                  )),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              // image and text
              Column(
                children: [
                  Container(
                    child: Column(children: [Image.asset('imges/22.jpg')]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Addication When Gambing Becaomes A Problem",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // image user and text
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("imges/1.jpeg"),
                                  fit: BoxFit.cover)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Brent Robertscn",
                              style: TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            Text(
                              "31min ago",
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Color.fromARGB(253, 180, 180, 180)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
                    ),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("imges/333.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Text(
                            "1125",
                            style: TextStyle(),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("imges/4444.png"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Text("348")
                        ],
                      )
                    ],
                  )
                ],
              ),
              //red card
              Column(
                children: [
                  Card(
                    color: Colors.deepOrange,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
                      child: Text("\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. \"",
                      style: TextStyle(fontSize: 25),),
                    ),
                    
                  )
                ],
              )
            ],

          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(141, 222, 222, 222),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "feed",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chat",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "person",
          ),
      ],
    ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer();
  }
}
