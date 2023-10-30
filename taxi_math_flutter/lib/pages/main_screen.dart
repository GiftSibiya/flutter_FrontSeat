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

  ///// These are the variables for the row calculators /////
  //// NOTE FOR FUTURE ME,
  ///it's a bit cold and i just want this thing to work so i can have it on my phone tomorrow.
  ///i know this is a long way to go about it but right now I just want it to work, lol /////
  ///
  int p1 = 0;
  int s1 = 0;
  int p2 = 0;
  int s2 = 0;
  int p3 = 0;
  int s3 = 0;
  int p4 = 0;
  int s4 = 0;
  int p5 = 0;
  int s5 = 0;

  @override
  Widget build(BuildContext context) {
    int driverCash = _fare * _seats;
    ////Build variables for row calculators/////
    ///for change calculations
    int change1 = _fare * s1;
    int change2 = _fare * s2;
    int change3 = _fare * s3;
    int change4 = _fare * s4;
    int change5 = _fare * s5;
    //// for the drivers calculation///
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
                          //// first row with legacy code ////
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

                    //////////////// This is of rthe row calculations things ////////////////////////////
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            width: 280,
                            height: 55,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("1"),
                                Column(
                                  children: [
                                    Text("Paid"),
                                    SizedBox(
                                      width: 60,
                                      height: 30,
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                            p1 = int.tryParse(value) ?? 0;
                                          });
                                        },
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            fillColor: Colors.white,
                                            filled: true,
                                            border: OutlineInputBorder()),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Seats"),
                                    SizedBox(
                                      width: 60,
                                      height: 30,
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                            s1 = int.tryParse(value) ?? 0;
                                          });
                                        },
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            fillColor: Colors.white,
                                            filled: true,
                                            border: OutlineInputBorder()),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Change"),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "R" + change1.toString(),
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [Text("Drivers"), Text("R")],
                                )
                              ],
                            ),
                          ),
                        ),
                        ////// End of the first one //////
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            width: 280,
                            height: 55,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("2"),
                                Column(
                                  children: [
                                    Text("Paid"),
                                    SizedBox(
                                      width: 60,
                                      height: 30,
                                      child: TextField(
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            fillColor: Colors.white,
                                            filled: true,
                                            border: OutlineInputBorder()),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Seats"),
                                    SizedBox(
                                      width: 60,
                                      height: 30,
                                      child: TextField(
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            fillColor: Colors.white,
                                            filled: true,
                                            border: OutlineInputBorder()),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Change"),
                                  ],
                                ),
                                Column(
                                  children: [Text("Drivers"), Text("R")],
                                )
                              ],
                            ),
                          ),
                        ),
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
