// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'package:flutter_application_1/Theme/color.dart';
import 'package:flutter_application_1/components/bottom_nav_bar.dart';
import 'package:flutter_application_1/components/button_tacket.dart';

import 'package:flutter_application_1/components/req_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundcolor,
        bottomNavigationBar: BottomNavBar(),
        body: ListView(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/icon/bg.png",
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hi,Karim\nFlight to anywhere",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'RobotoBlack'),
                          ),
                          Image.asset(
                            "assets/icon/avatar.png",
                            width: 50,
                            height: 50,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ReqCard(),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Upocomming flights",
                            style: TextStyle(
                                fontSize: 18,
                                color: textcolor,
                                fontFamily: 'RobotoBlack'),
                          ),
                          Text(
                            "see all",
                            style: TextStyle(
                                fontSize: 15,
                                color: primaryColor,
                                fontFamily: 'RobotoRegular'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 300,
                        height: 190,
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              child: Container(
                                width: 300,
                                height: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white),
                                child: Column(
                                  children: [
                                    //ASN M AUQ
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 21, 0, 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          //ASN
                                          Column(
                                            children: [
                                              Text(
                                                "ASN",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: textcolor,
                                                    fontFamily: 'RobotoBlack'),
                                              ),
                                              Text(
                                                "Aswan",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: textcolor,
                                                    fontFamily:
                                                        'RobotoRegular'),
                                              ),
                                            ],
                                          ),
                                          //fly
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 20, 0, 0),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  "assets/icon/M.png",
                                                  width: 40,
                                                ),
                                                Text(
                                                  "th 30M",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: textcolor,
                                                      fontFamily:
                                                          'RobotoRegular'),
                                                ),
                                              ],
                                            ),
                                          ),
                                          //AUQ
                                          Column(
                                            children: [
                                              Text(
                                                "AUQ",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: textcolor,
                                                    fontFamily: 'RobotoBlack'),
                                              ),
                                              Text(
                                                "Abu Qir",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: textcolor,
                                                    fontFamily:
                                                        'RobotoRegular'),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    //date and time
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5, 32, 5, 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ButtonTacket(
                                              text: "09:22AM",
                                              image: "assets/icon/time.png"),
                                          ButtonTacket(
                                              text: "May 23/2024",
                                              image: "assets/icon/date.png"),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              alignment: Alignment.topCenter,
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: backgroundcolor),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: backgroundcolor),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
