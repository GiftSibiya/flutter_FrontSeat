import 'package:flutter/material.dart';
import 'package:taxi_math_flutter/src/Constants/colors.dart';
import 'package:taxi_math_flutter/src/utils/themes/themes.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //// This is for the themes////

  bool _iconBool = false;

  final IconData _iconLight = Icons.wb_sunny;
  final IconData _iconDark = Icons.nights_stay;

  //// Variables ////
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
  int p6 = 0;
  int s6 = 0;
  int p7 = 0;
  int s7 = 0;

  @override
  Widget build(BuildContext context) {
    int driverCash = _fare * _seats;

    ////Build variables for row calculators/////
    ///
    ///These are varibles for iszes, yes they are supposed to be on a different file i know
    double rowDataSize = 15;

    ///for change calculations
    int change1 = p1 - (_fare * s1);
    int change2 = p2 - (_fare * s2);
    int change3 = p3 - (_fare * s3);
    int change4 = p4 - (_fare * s4);
    int change5 = p5 - (_fare * s5);
    int change6 = p6 - (_fare * s6);
    int change7 = p7 - (_fare * s7);
    //// for the drivers calculation///

    int drivers1 = _fare * s1;
    int drivers2 = _fare * s2;
    int drivers3 = _fare * s3;
    int drivers4 = _fare * s4;
    int drivers5 = _fare * s5;
    int drivers6 = _fare * s6;
    int drivers7 = _fare * s7;

    //// Alright that's enough i think ////
    // -- This is for the dialogue -- //

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _iconBool ? GAppThemes.lightTheme : GAppThemes.darkTheme,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                    //// This is after the AppBar Thing////

                    Center(
                      ///// This will be our appbar ////
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,

                        decoration: BoxDecoration(
                          color: _iconBool ? lightColor : darkColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),

                        //Here is the main coumn below
                        child: Column(
                          children: [
                            // This is the header row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ////
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(10)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(
                                            () {
                                              _iconBool = !_iconBool;
                                            },
                                          );
                                        },
                                        child: Icon(
                                            _iconBool ? _iconLight : _iconDark),
                                      ),
                                      const Text(
                                        "FRONT SEAT",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          // Handle the click on the second icon
                                          // You can define a function or callback here
                                          // e.g., Navigator.push(...), showDialog(...), etc.
                                        },
                                        child: const Icon(
                                          Icons.person,
                                        ),
                                      ),
                                    ],
                                  ),
                                )

                                ///
                              ],
                            ),
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
                                            filled: true,
                                            fillColor: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Driver's cash is: R $driverCash",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Container(
                      padding: const EdgeInsets.all(6),
                      //This is the grey box surrounding the calculation rows
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.55,
                      decoration: BoxDecoration(
                        color: _iconBool ? lightColor : darkColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),

                      //////////////// This is for the row calculations things ////////////////////////////

                      child: ListView(
                        padding: const EdgeInsets.all(5),
                        children: [
                          //// Fistr Row ////

                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              width: 280,
                              height: 55,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text("1"),
                                  Column(
                                    children: [
                                      const Text("Paid"),
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
                                          decoration: const InputDecoration(
                                              fillColor: Colors.white,
                                              filled: true,
                                              border: OutlineInputBorder()),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("Seats"),
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
                                          decoration: const InputDecoration(
                                              fillColor: Colors.white,
                                              filled: true,
                                              border: OutlineInputBorder()),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("Change"),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "R$change1",
                                        style: TextStyle(fontSize: rowDataSize),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("Drivers"),
                                      const SizedBox(height: 5),
                                      Text(
                                        "R$drivers1",
                                        style: TextStyle(fontSize: rowDataSize),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          ////// End of the first one //////

                          ///Second one is here
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              width: 280,
                              height: 55,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text("2"),
                                  Column(
                                    children: [
                                      const Text("Paid"),
                                      SizedBox(
                                        width: 60,
                                        height: 30,
                                        child: TextField(
                                          onChanged: (value) {
                                            setState(() {
                                              p2 = int.tryParse(value) ?? 0;
                                            });
                                          },
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                              fillColor: Colors.white,
                                              filled: true,
                                              border: OutlineInputBorder()),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("Seats"),
                                      SizedBox(
                                        width: 60,
                                        height: 30,
                                        child: TextField(
                                          onChanged: (value) {
                                            setState(() {
                                              s2 = int.tryParse(value) ?? 0;
                                            });
                                          },
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                              fillColor: Colors.white,
                                              filled: true,
                                              border: OutlineInputBorder()),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("Change"),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "R$change2",
                                        style: TextStyle(fontSize: rowDataSize),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("Drivers"),
                                      const SizedBox(height: 5),
                                      Text(
                                        "R$drivers2",
                                        style: TextStyle(fontSize: rowDataSize),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),

                          //// Third one starts here ////
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              width: 280,
                              height: 55,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text("3"),
                                  Column(
                                    children: [
                                      const Text("Paid"),
                                      SizedBox(
                                        width: 60,
                                        height: 30,
                                        child: TextField(
                                          onChanged: (value) {
                                            setState(() {
                                              p3 = int.tryParse(value) ?? 0;
                                            });
                                          },
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                              fillColor: Colors.white,
                                              filled: true,
                                              border: OutlineInputBorder()),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("Seats"),
                                      SizedBox(
                                        width: 60,
                                        height: 30,
                                        child: TextField(
                                          onChanged: (value) {
                                            setState(() {
                                              s3 = int.tryParse(value) ?? 0;
                                            });
                                          },
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                              fillColor: Colors.white,
                                              filled: true,
                                              border: OutlineInputBorder()),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("Change"),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "R$change3",
                                        style: TextStyle(fontSize: rowDataSize),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("Drivers"),
                                      const SizedBox(height: 5),
                                      Text(
                                        "R$drivers3",
                                        style: TextStyle(fontSize: rowDataSize),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),

                          //// Beginning of fourth row
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              width: 280,
                              height: 55,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text("4"),
                                  Column(
                                    children: [
                                      const Text("Paid"),
                                      SizedBox(
                                        width: 60,
                                        height: 30,
                                        child: TextField(
                                          onChanged: (value) {
                                            setState(() {
                                              p4 = int.tryParse(value) ?? 0;
                                            });
                                          },
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                              fillColor: Colors.white,
                                              filled: true,
                                              border: OutlineInputBorder()),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("Seats"),
                                      SizedBox(
                                        width: 60,
                                        height: 30,
                                        child: TextField(
                                          onChanged: (value) {
                                            setState(() {
                                              s4 = int.tryParse(value) ?? 0;
                                            });
                                          },
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                              fillColor: Colors.white,
                                              filled: true,
                                              border: OutlineInputBorder()),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("Change"),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "R$change4",
                                        style: TextStyle(fontSize: rowDataSize),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("Drivers"),
                                      const SizedBox(height: 5),
                                      Text(
                                        "R$drivers4",
                                        style: TextStyle(fontSize: rowDataSize),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),

                          //// Here is the 5th row ////
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              width: 280,
                              height: 55,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text("5"),
                                  Column(
                                    children: [
                                      const Text("Paid"),
                                      SizedBox(
                                        width: 60,
                                        height: 30,
                                        child: TextField(
                                          onChanged: (value) {
                                            setState(() {
                                              p5 = int.tryParse(value) ?? 0;
                                            });
                                          },
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                              fillColor: Colors.white,
                                              filled: true,
                                              border: OutlineInputBorder()),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("Seats"),
                                      SizedBox(
                                        width: 60,
                                        height: 30,
                                        child: TextField(
                                          onChanged: (value) {
                                            setState(() {
                                              s5 = int.tryParse(value) ?? 0;
                                            });
                                          },
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                              fillColor: Colors.white,
                                              filled: true,
                                              border: OutlineInputBorder()),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("Change"),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "R$change5",
                                        style: TextStyle(fontSize: rowDataSize),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("Drivers"),
                                      const SizedBox(height: 5),
                                      Text(
                                        "R$drivers5",
                                        style: TextStyle(fontSize: rowDataSize),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),

                          //// 6th one right here ////
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              width: 280,
                              height: 55,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text("6"),
                                  Column(
                                    children: [
                                      const Text("Paid"),
                                      SizedBox(
                                        width: 60,
                                        height: 30,
                                        child: TextField(
                                          onChanged: (value) {
                                            setState(() {
                                              p6 = int.tryParse(value) ?? 0;
                                            });
                                          },
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                              fillColor: Colors.white,
                                              filled: true,
                                              border: OutlineInputBorder()),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("Seats"),
                                      SizedBox(
                                        width: 60,
                                        height: 30,
                                        child: TextField(
                                          onChanged: (value) {
                                            setState(() {
                                              s6 = int.tryParse(value) ?? 0;
                                            });
                                          },
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                              fillColor: Colors.white,
                                              filled: true,
                                              border: OutlineInputBorder()),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("Change"),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "R$change6",
                                        style: TextStyle(fontSize: rowDataSize),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("Drivers"),
                                      const SizedBox(height: 5),
                                      Text(
                                        "R$drivers6",
                                        style: TextStyle(fontSize: rowDataSize),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          //// Let's make it seven for good measure
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              width: 280,
                              height: 55,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text("7"),
                                  Column(
                                    children: [
                                      const Text("Paid"),
                                      SizedBox(
                                        width: 60,
                                        height: 30,
                                        child: TextField(
                                          onChanged: (value) {
                                            setState(() {
                                              p7 = int.tryParse(value) ?? 0;
                                            });
                                          },
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                              fillColor: Colors.white,
                                              filled: true,
                                              border: OutlineInputBorder()),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("Seats"),
                                      SizedBox(
                                        width: 60,
                                        height: 30,
                                        child: TextField(
                                          onChanged: (value) {
                                            setState(() {
                                              s7 = int.tryParse(value) ?? 0;
                                            });
                                          },
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                              fillColor: Colors.white,
                                              filled: true,
                                              border: OutlineInputBorder()),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("Change"),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "R$change7",
                                        style: TextStyle(fontSize: rowDataSize),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("Drivers"),
                                      const SizedBox(height: 5),
                                      Text(
                                        "R$drivers7",
                                        style: TextStyle(fontSize: rowDataSize),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          //// Thats the end of the last one there ////
                          const Padding(
                              padding: EdgeInsets.symmetric(vertical: 40))
                        ],
                      ),
                    )
                  ],
                ),
              ],

              //End of the fare and seats row.
            ),
          ]),
        ),
      ),
    );
  }
}
