// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Theme/color.dart';

class ButtonTacket extends StatelessWidget {
  final String text;
  final String image;
  const ButtonTacket({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: buttoncolor, borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Image.asset(image),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(
                  color: primaryColor,
                  fontFamily: 'RobotoRegular',
                  fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
