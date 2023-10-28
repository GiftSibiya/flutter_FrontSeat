import 'dart:ffi';

import 'package:flutter/material.dart';

class RowField extends StatelessWidget {
  final String rowNum;

  const RowField({
    super.key,
    required this.rowNum,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
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
            Text(rowNum.toString()),
            const Column(
              children: [
                Text("Paid"),
                SizedBox(
                  width: 40,
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
                  width: 40,
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
