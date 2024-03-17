// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:rolex/admin/InsertData.dart';
import 'package:rolex/consts/colors-consts.dart';
import 'package:rolex/pages/BottomNavigationBar.dart';
import 'package:rolex/pages/CategoriesPages/AnalogWatchs.dart';
import 'package:rolex/pages/CategoriesPages/CoupleWatches.dart';
import 'package:rolex/pages/CategoriesPages/DigitalWatches.dart';
import 'package:rolex/pages/CategoriesPages/MensWatches.dart';
import 'package:rolex/pages/CategoriesPages/WomensWatches.dart';
import 'package:rolex/pages/HomePage.dart';
import 'package:rolex/pages/Main%20Page/CategoriesMain.dart';
import 'package:rolex/pages/ProductDetailsPage.dart';
import 'package:rolex/pages/SignInPage.dart';
import 'package:rolex/pages/SignUpPage.dart';
import 'package:rolex/pages/SplashscreenPage.dart';

void main() => runApp(Rolex());

class Rolex extends StatelessWidget {
  const Rolex({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: GreenColor,
      ),
      routes: {
        '/analog': (context) => AnalogWatchs("Analog"),
        '/digital': (context) => DigitalWatchs("Digital"),
        '/mens': (context) => MensWatchs("Mens watch"),
        '/womens': (context) => WomensWatchs("Womens watch"),
        '/couples': (context) => CoupleWatches("Couples watch"),
        "/": (context) => SplashScreenPage(),
      },
    );
  }
}
