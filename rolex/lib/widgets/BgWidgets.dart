import 'package:flutter/material.dart';
import 'package:rolex/consts/images-consts.dart';

Widget bgwidgets({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
      
      image: DecorationImage(image: AssetImage(BgG1), fit: BoxFit.fill
      ),
    ),
   
  );
}
