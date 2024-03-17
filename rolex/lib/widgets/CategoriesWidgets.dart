// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:rolex/consts/colors-consts.dart';
import 'package:rolex/consts/export-consts.dart';
import 'package:rolex/pages/CategoriesPages/AnalogWatchs.dart';
import 'package:rolex/pages/CategoriesPages/CoupleWatches.dart';
import 'package:rolex/pages/CategoriesPages/DigitalWatches.dart';
import 'package:rolex/pages/CategoriesPages/MensWatches.dart';
import 'package:rolex/pages/CategoriesPages/WomensWatches.dart';

class CategoriesWidgets extends StatelessWidget {
  CategoriesWidgets({Key? key});

  // Define a list of categories with image paths and names
  final List<Map<String, dynamic>> categoriesList = [
    {"imagePath": analog1, "name": "Analog Watch", "route": "/analog"},
    {"imagePath": digital4, "name": "Digital Watch", "route": "/digital"},
    {"imagePath": mens1, "name": "Mens Watch", "route": "/mens"},
    {"imagePath": womens1, "name": "Womens Watch", "route": "/womens"},
    {"imagePath": couple1, "name": "Couples Watch", "route": "/couples"},
    // Add more categories as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categoriesList.length,
          (index) {
            return GestureDetector(
              onTap: () {
                // Navigate to the specified route when a category is tapped
                Navigator.pushNamed(context, categoriesList[index]["route"]);
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      categoriesList[index]["imagePath"],
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      categoriesList[index]["name"],
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: semibold,
                        color: GreenColor,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
