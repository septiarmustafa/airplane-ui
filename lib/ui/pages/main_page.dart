import 'dart:math';

import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/widgets/custom_bottom_navigation.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super (key : key);
  @override
  Widget build(BuildContext context) {

    Widget buildContent(){
      return HomePage();
    }

    Widget customButtonNavigation(){


      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            bottom: 30, 
            left: defaultMargin, 
            right: defaultMargin,
          ),
          height: 60,
          decoration: BoxDecoration(
            color: kWhitekColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                imageUrl: 'assets/home.png',
                isSelected: true,
                ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/booking.png',
                ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/card.png',
                ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/setting.png',
                ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          customButtonNavigation(),
        ],
      ),
    );
  }
}