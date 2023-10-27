import 'package:flutter/material.dart';

class RowField extends StatelessWidget {
  const RowField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 55,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("1"),
          Column(
            children: [
              Text("Paid"),
              SizedBox(
                width: 40,
                height: 30,
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder()),
                ),
              )
            ],
          ),
          ////
          ///
          Column(
            children: [
              Text("Seats"),
              SizedBox(
                width: 40,
                height: 30,
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder()),
                ),
              )
            ],
          ),
          Column(
            children: [Text("Change"), Text("R")],
          ),
          Column(
            children: [Text("Drivers"), Text("R")],
          )
        ],
      ),
    );
  }
}
