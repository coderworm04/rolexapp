// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:rolex/consts/colors-consts.dart';
import 'package:rolex/consts/export-consts.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: GreenColor,
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              ZoomDrawer.of(context)!.toggle();
              // ZoomDrawer.of(context)!.close();
            },
            child: Icon(
              Icons.sort,
              size: 30,
              color: whiteColor,
            ),
          ),
          Expanded(
            child: Center(
              child: Image.asset(
                "assets/icons/logo-y.png",
                height: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        ZoomDrawer.of(context)!.toggle();
      },
      icon: const Icon(Icons.menu, color: Colors.black),
    );
  }
}
