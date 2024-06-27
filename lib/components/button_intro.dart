// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Theme/color.dart';

class ButtonIntro extends StatelessWidget {
  final String text;
  final double circular;
  final void Function()? onTap;
  const ButtonIntro(
      {super.key, required this.text, this.onTap, required this.circular});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 300,
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(circular)),
        padding: EdgeInsets.all(18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'RobotoRegular',
                  fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
