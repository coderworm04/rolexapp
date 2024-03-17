// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:rolex/consts/colors-consts.dart';
import 'package:rolex/widgets/ItemsWidgets.dart';

class CoupleWatches extends StatefulWidget {
  String category;
  CoupleWatches(this.category);

  @override
  State<CoupleWatches> createState() => _CoupleWatchesState();
}

class _CoupleWatchesState extends State<CoupleWatches> {
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
      title: Text("Couple Watches", style: TextStyle(color: whiteColor)),
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