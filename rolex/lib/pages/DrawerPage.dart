// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:rolex/admin/InsertData.dart';
import 'package:rolex/consts/colors-consts.dart';
import 'package:rolex/consts/export-consts.dart';
import 'package:rolex/pages/CategoriesPages/AnalogWatchs.dart';
import 'package:rolex/pages/CategoriesPages/CoupleWatches.dart';
import 'package:rolex/pages/CategoriesPages/DigitalWatches.dart';
import 'package:rolex/pages/CategoriesPages/MensWatches.dart';
import 'package:rolex/pages/CategoriesPages/WomensWatches.dart';
import 'package:rolex/pages/DrawerPage/About.dart';
import 'package:rolex/pages/DrawerPage/Settings.dart';
import 'package:rolex/pages/ProductDetailsPage.dart';

class ZoomDrawerPage extends StatefulWidget {
  const ZoomDrawerPage({super.key});

  @override
  State<ZoomDrawerPage> createState() => _ZoomDrawerPageState();
}

class _ZoomDrawerPageState extends State<ZoomDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GreenColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, left:18),
            child: InkWell(
              onTap: () {
                ZoomDrawer.of(context)!.close();
              },
              child: const Icon(
                Icons.close,
                color: whiteColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(AppLogoY),
                  backgroundColor: GreenColor,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: const [
                    Text(
                      "Hello,",
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Rolex",
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
              ExpansionTile(
          leading: Icon(
            Icons.category_outlined,
            color: whiteColor,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 10.0,
            color: whiteColor,
          ),
          title: Text(
            "Categories",
            style: TextStyle(
              color: whiteColor,
            ),
          ),
          children: [
            ListTile(
              title: Text("Analog Watches",
              style: TextStyle(color: whiteColor, fontSize: 13, fontFamily: regular),
              ),
              onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AnalogWatchs("Analog")));
              },
            ),
            ListTile(
              title: Text("Digital Watches", 
              style: TextStyle(color: whiteColor, fontFamily: regular, fontSize: 13),
              ),
              onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DigitalWatchs("Digital")));
              },
            ),
            ListTile(
              title: Text("Men's Watches",
              style: TextStyle(color: whiteColor, fontSize: 13, fontFamily: regular),
              ),
              onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MensWatchs("Mens watch")));
              },
            ),
            ListTile(
              title: Text("Women's Watches",
              style: TextStyle(color: whiteColor, fontSize: 13, fontFamily: regular),
              ),
              onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => WomensWatchs("Womens watch")));
              },
            ),
            ListTile(
              title: Text("Couple Watches",
              style: TextStyle(color: whiteColor, fontSize: 13, fontFamily: regular),
              ),
              onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CoupleWatches("Couples watch")));
              },
            ),
          ],
        ),
        Divider(),
      ListTile(
        title: Text("Settings",
        style: TextStyle(color: whiteColor)),
        leading: Icon(Icons.settings, color: whiteColor),
        onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
        },
      ),
      ListTile(
        title: Text("About",
        style: TextStyle(color: whiteColor)),
        leading: Icon(Icons.info, color: whiteColor,),
        onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
        },
      ),
        ],
      ),
    );
  }
  }
