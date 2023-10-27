// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const TaxiMath());
}

class TaxiMath extends StatelessWidget {
  const TaxiMath({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.yellow, Colors.red])),
            child: Center(
              child: Container(
                height: 540,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    )),
                //Here is the main coumn below
                child: Column(
                  children: [
                    // This is the header row
                    Row(children: [
                      Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(10)),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.menu, color: Colors.white),
                                Text("Taxi Math",
                                    style: TextStyle(color: Colors.white)),
                                Icon(Icons.person, color: Colors.white),
                              ])),
                    ]),
                    // This is the end of the header row
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 2)),
                            Text("Taxi Fare"),
                            SizedBox(height: 5),
                            SizedBox(
                              width: 40,
                              height: 30,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  filled:
                                      true, // Use filled property instead of fillColor
                                  fillColor: Colors
                                      .white, // Set a light background color
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
