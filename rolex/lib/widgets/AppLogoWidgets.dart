// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:rolex/consts/colors-consts.dart';
import 'package:rolex/consts/fontstyles-consts.dart';


Widget AppLogoWidgets() {
  return Container(
  child: Column(
    children: [
       Image.asset("assets/icons/logo-y.png"),
    ],
  ),
  width: 100,
  // height: 50,
  padding: const EdgeInsets.all(5),
);
}