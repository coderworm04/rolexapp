// ignore_for_file: unused_import

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:rolex/consts/colors-consts.dart';
import 'package:rolex/pages/CategoriesPage.dart';
import 'package:rolex/pages/HomePage.dart';
import 'package:rolex/pages/Main%20Page/CategoriesMain.dart';
import 'package:rolex/pages/Main%20Page/ProfileMain.dart';
import 'package:rolex/pages/ProfilePage.dart';
import 'package:rolex/widgets/HomeAppBar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  
    List Screens = [
    CategoriesPage(),
    HomePage(),
    ProfilePage()
  ];
  int _selectedIndex =1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      bottomNavigationBar: CurvedNavigationBar(
        color: GreenColor,
        height: 60,
        backgroundColor: whiteColor,
        animationDuration: const Duration(milliseconds: 500),
        // animationCurve: ,
        index: _selectedIndex,
        items: [
                Icon(Icons.category, size: 30, color: whiteColor,),
                Icon(Icons.home, size: 30, color: whiteColor),
                Icon(Icons.people, size: 30, color: whiteColor),
              ],
        onTap: (index){setState(() {
          _selectedIndex = index;
        });},
        ),
      body: Screens[_selectedIndex],
    );
  }
} 