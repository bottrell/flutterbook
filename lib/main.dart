import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello, World!",
      home: Scaffold(
        appBar: AppBar(
          leadingWidth: 120,
          backgroundColor: Colors.grey[800],
          leading: TextButton(
            child: const Text("facebook",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            onPressed: () => {print("clicked home")},
          ),
          title: Container(
            width: double.infinity,
            child: const TextField(
              decoration: InputDecoration(
                filled:true,
                fillColor: Colors.grey,
                  border: OutlineInputBorder(), labelText: "Search Facebook"),
            ),
          ),
          actions: [
            //messages
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
              child: Center(
                  child: Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.grey,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                          icon: const Icon(Icons.message),
                          onPressed: () =>
                              {print("user clicked on messages!")}))),
            ),
            // notifications
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
              child: Center(
                  child: Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.grey,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                          icon: const Icon(Icons.notifications),
                          onPressed: () =>
                              {print("user clicked on notification bell!")}))),
            ),
            // Profile Button
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
              child: Center(
                  child: Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.grey,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                          icon: const Icon(Icons.person),
                          onPressed: () =>
                              {print("user clicked on profile!")}))),
            ),
          ],
        ),
        body: Container(
            child: Column(children: [
          Card(
            child: Text("Hello"),
          ),
          Card(
            child: Text("Hello"),
          )
        ])),
      ),
    );
  }
}
