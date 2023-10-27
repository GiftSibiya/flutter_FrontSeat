// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taxi_math_flutter/custom_widgets/rowField.dart';

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
            height: 540,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.yellow, Colors.red])),
            child: Center(
              child: Container(
                height: 440,
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
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(10)),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.menu,
                                ),
                                Text(
                                  "Taxi Math",
                                ),
                                Icon(
                                  Icons.person,
                                ),
                              ])),
                    ]),
                    // This is the end of the header row
                    Row(
                      // This is the row for the taxi fare an passanger counts
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        ),
                        Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 2)),
                            Text("Total Seats"),
                            SizedBox(height: 5),
                            SizedBox(
                              width: 40,
                              height: 30,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Driver's change is R"),
                    Container(
                      //This is the grey box surrounding the calculation rows
                      height: 250,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                          RowField(),
                          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                          RowField(),
                        ],
                      ),
                    )
                  ],

                  //End of the fare and seats row.
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
