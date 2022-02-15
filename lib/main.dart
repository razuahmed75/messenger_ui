// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Messenger",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List ImageUrl = [
    "assets/images/add.png",
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
    "assets/images/9.jpg",
    "assets/images/10.jpg",
    "assets/images/11.jpg",
    "assets/images/12.jpg",
  ];
  List ImgUrl = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
    "assets/images/9.jpg",
    "assets/images/10.jpg",
    "assets/images/11.jpg",
    "assets/images/12.jpg",
  ];
  List NameList = [
    "Add",
    "Oliver",
    "Mashrafee",
    "Harry",
    "Jacob",
    "Charlie",
    "Thomas",
    "George",
    "Oscar",
    "James",
    "William",
    "Elon",
    "Gates",
  ];
  List NameLists = [
    "Oliver",
    "Mashrafee",
    "Harry",
    "Jacob",
    "Charlie",
    "Thomas",
    "George",
    "Oscar",
    "James",
    "William",
    "Elon",
    "Gates",
  ];
  List SubTitleList = [
    "Realy? That's great We will do it tomorrow.",
    "I just don't understand what the message can be.",
    "Your thoughts are your message to the world. Just as the rays are the messages of the Sun.",
    "The absence of a message sometimes is a presence of one.",
    "Honestly, if everyone likes what you say something is wrong with your message.",
    "By reading this message you are denying its existence and implying consent.",
    "In soul of every newborn baby words are waiting to be written.",
    "Or maybe that’s what it’s all about: this religion’s substance is its lack of substance.",
    "In McLuhanesque terms, the medium is the message. Some people might find that cool.",
    "In other words, the package itself is the contents. Is that it?",
    "Send message to the future by writing it today!",
    "Hey, look, even I read a book now and then,” Ayumi protested.",
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 8, 114, 200),
    ));
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 8, 114, 200),
        // Header Section ---------------------------------------
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Inbox",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontFamily: "Arial",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Icon(
                        Icons.download_for_offline_sharp,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Favourite Contact",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "Arial",
                ),
              ),
            ),
            // Middle Section -----------------------------------------

            Container(
              height: MediaQuery.of(context).size.height * 0.17,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ImageUrl.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(42, 53, 52, 56),
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(ImageUrl[index]),
                            ),
                          ),
                          Text(
                            "${NameList[index]}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: "Arial",
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            // Bottom Section-----------------------------------------
            Container(
              padding: EdgeInsets.only(top: 12),
              width: MediaQuery.of(context).size.width * 1.0,
              height: MediaQuery.of(context).size.height * 1.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
              ),
              child: ListView.builder(
                itemCount: 12,
                itemBuilder: ((context, int n) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      onTap: () {},
                      leading: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(42, 53, 52, 56),
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(ImgUrl[n]),
                        ),
                      ),
                      title: Text(
                        "${NameLists[n]}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "${SubTitleList[n]}",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "2.30pm",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 8, 114, 200),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              "2",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 8, 114, 200),
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
