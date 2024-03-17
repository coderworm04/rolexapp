import 'package:flutter/material.dart';

Widget ButtonWidgets({
  required VoidCallback onpress,
  required Color color,
  required Color textcolor,
  String? buttontitle,
}) {
  return Center(
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        padding: EdgeInsets.symmetric(horizontal: 50),
      ),
      onPressed: onpress,
      child: Text(
        buttontitle ?? '',
        style: TextStyle(color: textcolor),
      ),
    ),
  );
}
