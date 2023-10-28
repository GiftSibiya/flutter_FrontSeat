import 'package:flutter/material.dart';
import 'package:taxi_math_flutter/custom_widgets/rowField.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _fare = 0;

  int _seats = 0;

  @override
  Widget build(BuildContext context) {
    int driverCash = _fare * _seats;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 540,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.yellow, Colors.red])),
          child: Center(
            child: Container(
              height: 440,
              width: 300,
              decoration: const BoxDecoration(
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
                        decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(10)),
                        ),
                        child: const Row(
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
                          const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 2)),
                          const Text("Taxi Fare"),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: 50,
                            height: 30,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                setState(() {
                                  _fare = int.tryParse(value) ?? 0;
                                });
                              },
                              decoration: const InputDecoration(
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
                          const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 2)),
                          const Text("Total Seats"),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: 50,
                            height: 30,
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  _seats = int.tryParse(value) ?? 0;
                                });
                              },
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("Driver's change is R $driverCash"),
                  Container(
                    //This is the grey box surrounding the calculation rows
                    height: 250,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),

                    child: ListView(
                      children: [
                        RowField(
                          rowNum: "1",
                        ),
                        RowField(
                          rowNum: "2",
                        ),
                        RowField(
                          rowNum: "3",
                        ),
                        RowField(
                          rowNum: "4",
                        ),
                        RowField(
                          rowNum: "5",
                        )
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
    );
  }
}
