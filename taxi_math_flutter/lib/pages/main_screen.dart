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
  int p6 = 0;
  int s6 = 0;
  int p7 = 0;
  int s7 = 0;

  @override
  Widget build(BuildContext context) {
    int driverCash = _fare * _seats;

    ////Build variables for row calculators/////

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
                  Text(
                    "Driver's cash is: R " + driverCash.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(2),
                    //This is the grey box surrounding the calculation rows

                    height: 250,
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        border: Border.all(color: Colors.black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),

                    //////////////// This is of rthe row calculations things ////////////////////////////

                    child: ListView(
                      padding: EdgeInsets.all(5),
                      children: [
                        //// Fistr Row ////

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
                                    Text("Change"),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "R" + change1.toString(),
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Drivers"),
                                    SizedBox(height: 5),
                                    Text(
                                      "R" + drivers1.toString(),
                                      style: TextStyle(fontSize: 20),
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
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Row(
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
                                    Text("Seats"),
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
                                    Text("Change"),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "R" + change2.toString(),
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Drivers"),
                                    SizedBox(height: 5),
                                    Text(
                                      "R" + drivers2.toString(),
                                      style: TextStyle(fontSize: 20),
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
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("3"),
                                Column(
                                  children: [
                                    Text("Paid"),
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
                                    Text("Seats"),
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
                                    Text("Change"),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "R" + change3.toString(),
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Drivers"),
                                    SizedBox(height: 5),
                                    Text(
                                      "R" + drivers3.toString(),
                                      style: TextStyle(fontSize: 20),
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
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("4"),
                                Column(
                                  children: [
                                    Text("Paid"),
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
                                    Text("Seats"),
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
                                    Text("Change"),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "R" + change4.toString(),
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Drivers"),
                                    SizedBox(height: 5),
                                    Text(
                                      "R" + drivers4.toString(),
                                      style: TextStyle(fontSize: 20),
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
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("5"),
                                Column(
                                  children: [
                                    Text("Paid"),
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
                                    Text("Seats"),
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
                                    Text("Change"),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "R" + change5.toString(),
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Drivers"),
                                    SizedBox(height: 5),
                                    Text(
                                      "R" + drivers5.toString(),
                                      style: TextStyle(fontSize: 20),
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
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("6"),
                                Column(
                                  children: [
                                    Text("Paid"),
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
                                    Text("Seats"),
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
                                    Text("Change"),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "R" + change6.toString(),
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Drivers"),
                                    SizedBox(height: 5),
                                    Text(
                                      "R" + drivers6.toString(),
                                      style: TextStyle(fontSize: 20),
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
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("7"),
                                Column(
                                  children: [
                                    Text("Paid"),
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
                                    Text("Seats"),
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
                                    Text("Change"),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "R" + change7.toString(),
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Drivers"),
                                    SizedBox(height: 5),
                                    Text(
                                      "R" + drivers7.toString(),
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        //// Thats the end of the last one there ////
                        Padding(padding: EdgeInsets.symmetric(vertical: 40))
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
