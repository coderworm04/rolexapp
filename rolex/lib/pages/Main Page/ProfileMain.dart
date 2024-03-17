// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:rolex/consts/export-consts.dart';
import 'package:rolex/widgets/HomeAppBar.dart';

class ProfileMain extends StatefulWidget {
  const ProfileMain({super.key});

  @override
  State<ProfileMain> createState() => _ProfileMainState();
}

class _ProfileMainState extends State<ProfileMain> {
  @override
  Widget build(BuildContext context) => Scaffold(
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Profile Page",
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
