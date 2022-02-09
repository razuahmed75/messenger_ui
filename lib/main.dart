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
                  itemCount: 50,
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
                              backgroundImage:
                                  AssetImage("assets/images/gates4.jpg"),
                            ),
                          ),
                          Text(
                            "Gates",
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
              width: MediaQuery.of(context).size.width * 1.0,
              height: MediaQuery.of(context).size.height * 1.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
              ),
              child: ListView.builder(
                itemCount: 50,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18),
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
                          backgroundImage:
                              AssetImage("assets/images/elonMusk.jpg"),
                        ),
                      ),
                      title: Text(
                        "Elon Musk",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Realy? That's great We will do it tomorrow.",
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
