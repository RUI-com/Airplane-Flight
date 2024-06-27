// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Theme/color.dart';
import 'package:flutter_application_1/components/button_intro.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      width: 75,
                      height: 21,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: primaryColor),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: secondaryColor),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            child: Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: secondaryColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/img/skay.png",
                      width: 160,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // title
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "From",
                          style: TextStyle(
                              fontSize: 21,
                              color: textcolor,
                              fontFamily: 'RobotoBlack'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "anywhere",
                          style: TextStyle(
                              fontSize: 21,
                              color: primaryColor,
                              fontFamily: 'RobotoBlack'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "to anywhere",
                          style: TextStyle(
                              fontSize: 21,
                              color: textcolor,
                              fontFamily: 'RobotoBlack'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "At this time (COVID-19), we are\n always ready to keep you safe",
                      style: TextStyle(
                          fontSize: 16,
                          color: textcolor,
                          fontFamily: 'RobotoRegular'),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ButtonIntro(
                      text: 'Get Started',
                      circular: 50,
                      onTap: () {
                        Navigator.pushNamed(context, '/home');
                      },
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                width: double.infinity,
                height: 150,
                child: Image.asset(
                  "assets/img/fly.png",
                  width: 100,
                ),
              ),
            ],
          )),
    );
  }
}
