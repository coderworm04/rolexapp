import 'package:flutter/material.dart';

class GreenShadedCard extends StatelessWidget {
  final String productImage;
  final String titletext;
  final VoidCallback onTap;

  GreenShadedCard(this.productImage, this.titletext, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 96, 57, 1).withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: GestureDetector(
          onTap: onTap, // Call the provided function when the card is tapped
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                // Image
                Image.asset(
                  productImage,
                  fit: BoxFit.cover,
                ),
                // Green shade overlay
                Container(
                  color: Color.fromRGBO(0, 96, 57, 1).withOpacity(0.3),
                ),
                // Text
                Center(
                  child: Text(
                    titletext,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
