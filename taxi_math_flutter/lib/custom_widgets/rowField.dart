import 'dart:ffi';
import 'package:taxi_math_flutter/pages/main_screen.dart';
import 'package:flutter/material.dart';

class RowField extends StatefulWidget {
  late final String rowNum;
  int fare = 0;

  RowField({
    super.key,
    required this.rowNum,
    required this.fare,
  });

  @override
  State<RowField> createState() => _RowFieldState();
}

class _RowFieldState extends State<RowField> {
  int _paid = 0;
  int _rowSeats = 0;
  int fare = 0;

  /////

  @override
  Widget build(BuildContext context) {
    int rowTotal = (fare * _rowSeats);
    int rowChange = (rowTotal - _paid);
    return Container();
  }
}
