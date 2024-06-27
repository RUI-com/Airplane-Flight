// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Theme/color.dart';

class InputDate extends StatelessWidget {
  final String text;
  const InputDate({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      child: TextField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(color: bordercolor),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: bordercolor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: bordercolor),
          ),
        ),
      ),
    );
  }
}
