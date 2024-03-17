// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:rolex/consts/colors-consts.dart';
import 'package:rolex/widgets/ItemsWidgets.dart';

// ignore: must_be_immutable
class AnalogWatchs extends StatefulWidget {
  String category;
  AnalogWatchs(this.category);

  @override
  State<AnalogWatchs> createState() => _AnalogWatchsState();
}

class _AnalogWatchsState extends State<AnalogWatchs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: whiteColor),
          onPressed: () => Navigator.pop(context),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: GreenColor,
      title: Text("Analog Watchs", style: TextStyle(color: whiteColor)),  
      ),
      body: ListView(
        children: [
          Container(
            // height: 800,
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