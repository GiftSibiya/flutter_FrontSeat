import 'dart:ffi';
import 'package:taxi_math_flutter/pages/main_screen.dart';
import 'package:flutter/material.dart';

class RowField extends StatefulWidget {
  RowField({
    super.key,
    required this.rowNum,
  });

  @override
  State<RowField> createState() => _RowFieldState();
  int _paid = 0;
  int _rowSeats = 0;
  final String rowNum;
}

class _RowFieldState extends State<RowField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        width: 280,
        height: 55,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(widget.rowNum.toString()),
            const Column(
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
            ////
            ///
            const Column(
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
            const Column(
              children: [Text("Change"), Text("R")],
            ),
            const Column(
              children: [Text("Drivers"), Text("R")],
            )
          ],
        ),
      ),
    );
  }
}
