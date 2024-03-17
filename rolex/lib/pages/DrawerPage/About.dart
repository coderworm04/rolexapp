import 'package:flutter/material.dart';
import 'package:rolex/consts/colors-consts.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    leading: IconButton(
      icon: Icon(Icons.arrow_back, color: whiteColor),
      onPressed: () => Navigator.pop(context),
    ),
    shadowColor: Colors.transparent,
    backgroundColor: GreenColor,
    title: Text("About", style: TextStyle(color: whiteColor)),
  ),
  body: ListView(
    children: [
      Container(
        height: 500,
        padding: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          color: lightGrey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
        ),
        child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "About Page",
                    style: TextStyle(
                      fontSize: 24, // Adjust the font size as needed
                      fontWeight: FontWeight.normal,
                      color: GreenColor,
                    ),
                  ),
                  // SizedBox(height: 20,),
                ],
              ),
      ),
    ],
  ),
);
  }
}