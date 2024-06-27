// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Theme/color.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        height: 80,
        color: Colors.transparent,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.all(15),
                    height: double.infinity,
                    child: GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(
                        "assets/icon/home.svg",
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.topCenter,
                height: double.infinity,
                child: GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    "assets/icon/search.svg",
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(50)),
                  padding: EdgeInsets.all(15),
                  child: GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      "assets/icon/map.svg",
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(10),
                height: double.infinity,
                child: GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    "assets/icon/card.svg",
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(10),
                height: double.infinity,
                child: GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    "assets/icon/notification.svg",
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
