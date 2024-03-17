// ignore_for_file: unused_import

// import 'dart:html';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:rolex/consts/colors-consts.dart';
import 'package:rolex/consts/fontstyles-consts.dart';
import 'package:rolex/pages/CategoriesPages/AnalogWatchs.dart';
import 'package:rolex/pages/DrawerPage.dart';
import 'package:rolex/widgets/CategoriesWidgets.dart';
import 'package:rolex/widgets/HomeAppBar.dart';
import 'package:rolex/widgets/ItemsWidgets.dart';
import 'package:rolex/widgets/SwiperWidgets.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
// ------------------AppBar widgets-----------------------------------
          HomeAppBar(),

// ------------------Container-----------------------------------
          Container(
            // height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: lightGrey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              )
            ),
            child: Column(
              children: [
// ------------------Search-----------------------------------
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                     color: whiteColor,
                    borderRadius: BorderRadius.circular(30),   
                 ),
                 child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search Here'
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.search_off,
                      size: 27,
                      color: GreenColor,
                    )
                  ],
                 ),
                ),
// -------------------Categories Section----------------------
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: bold,
                      color: GreenColor,
                    ),
                  ),
                ),
// ---------------------Categories  Widgets--------------------------
                CategoriesWidgets(),
                // SwiperWidgets---------------------------------------
                SizedBox(height: 20,),
                SwiperWidgets(),
                SizedBox(height: 20,),
                
// ------------------Items-----------------------------------
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 10,
                  ),
                  child: Text(
                    "Top Product",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: bold,
                      color: GreenColor,
                    ),
                  ),
                ),
                // Items Widgets-----------------------------------
                ItemsWidgets
                ("Womens watch"),

                // SwiperWidgets---------------------------------------
                SwiperWidgets(),
              ],
            ),
          ),
        ],
      ),
          );
  }
}

