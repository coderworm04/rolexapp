// ignore_for_file: unused_import

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:rolex/consts/colors-consts.dart';
import 'package:rolex/consts/export-consts.dart';
import 'package:rolex/pages/DrawerPage.dart';
import 'package:rolex/pages/Main%20Page/CategoriesMain.dart';
import 'package:rolex/pages/Main%20Page/HomeMain.dart';
import 'package:rolex/pages/Main%20Page/ProfileMain.dart';
import 'package:rolex/widgets/CategoriesWidgets.dart';
import 'package:rolex/widgets/HomeAppBar.dart';
import 'package:rolex/widgets/ItemsWidgets.dart';
import 'package:rolex/widgets/SwiperWidgets.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GreenColor,
      body: ZoomDrawer(
        angle: 0.0,
        mainScreen: ProfileMain(),
        menuScreen: ZoomDrawerPage(),
      ),
    );
  }
} 