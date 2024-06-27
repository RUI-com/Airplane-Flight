// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Theme/color.dart';
import 'package:flutter_application_1/components/button_intro.dart';
import 'package:flutter_application_1/components/input_date.dart';
import 'package:flutter_application_1/components/input_text.dart';

class ReqCard extends StatelessWidget {
  const ReqCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              InputText(
                text: 'From::',
                image: 'assets/icon/from.png',
              ),
              SizedBox(
                height: 10,
              ),
              InputText(
                text: 'To::',
                image: 'assets/icon/to.png',
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InputDate(
                    text: 'Despartute',
                  ),
                  InputDate(
                    text: 'Return',
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 260,
                child: ButtonIntro(
                  text: 'Search',
                  circular: 15,
                ),
              )
            ],
          ),
          Positioned(
            right: 23,
            top: 40,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: buttoncolor,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: bordercolor, width: 1)),
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icon/req.png",
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
