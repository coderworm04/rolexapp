// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:rolex/consts/colors-consts.dart';
import 'package:rolex/consts/export-consts.dart';
import 'package:rolex/widgets/HomeAppBar.dart';
import 'package:rolex/widgets/ItemsWidgets.dart';
import 'package:rolex/widgets/ShadeCardWidget.dart'; // Import the ShadeCardWidget

class CategoriesMain extends StatefulWidget {
  const CategoriesMain({Key? key}) : super(key: key);

  @override
  State<CategoriesMain> createState() => _CategoriesMainState();
}

class _CategoriesMainState extends State<CategoriesMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            height: 800,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: lightGrey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 20,),
                  Container(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: bold,
                      color: GreenColor,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                GreenShadedCard(
                  analogBG,
                  'Analog Watch',
                  () {
                    Navigator.pushNamed(context, '/analog');
                  },
                ),
                SizedBox(height: 20,),
                GreenShadedCard(
                  digitalBG,
                  'Digital Watch',
                  () {
                    Navigator.pushNamed(context, '/digital');
                  },
                ),
                SizedBox(height: 20,),
                GreenShadedCard(
                  mensBG,
                  'Mens Watch',
                  () {
                    Navigator.pushNamed(context, '/mens');
                  },
                ),
                SizedBox(height: 20,),
                GreenShadedCard(
                  womensBG,
                  'Womens Watch',
                  () {
                    Navigator.pushNamed(context, '/womens');
                  },
                ),
                SizedBox(height: 20,),
                GreenShadedCard(
                  coupleBG,
                  'Couple Watch',
                  () {
                    Navigator.pushNamed(context, '/couple');
                  },
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
