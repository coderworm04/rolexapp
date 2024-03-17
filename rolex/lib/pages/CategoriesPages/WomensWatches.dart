// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:rolex/consts/colors-consts.dart';
import 'package:rolex/widgets/ItemsWidgets.dart';

class WomensWatchs extends StatefulWidget {
  String category;
  WomensWatchs(this.category);

  @override
  State<WomensWatchs> createState() => _WomensWatchsState();
}

class _WomensWatchsState extends State<WomensWatchs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: whiteColor),
          onPressed: () => Navigator.pop(context),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: GreenColor,
      title: Text("Womens Watchs", style: TextStyle(color: whiteColor)),
      ),
      body: ListView(
        children: [
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
                    ItemsWidgets(widget.category),
                  ],
                ),
          
          ),
        ],
      ),
    );
  }
}