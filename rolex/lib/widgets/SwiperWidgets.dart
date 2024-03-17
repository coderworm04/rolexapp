import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rolex/consts/images-consts.dart';

class SwiperWidgets extends StatelessWidget {
  const SwiperWidgets({Key? key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 15,
      options: CarouselOptions(
        height: 150, // Adjust the height as needed
        enlargeCenterPage: true,
        viewportFraction: 0.8,
        autoPlay: true,
      ),
      itemBuilder: (BuildContext context, int index, int realIndex) {
        String imagePath = getImagePath(index); // Function to get image path based on index

        return Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imagePath,
              height: 120,
              width: 350,
              fit: BoxFit.fill,
            ),
          ),
        );
      },
    );
  }

  String getImagePath(int index) {
    switch (index) {
      case 0:
        return analogBG;
      case 1:
        return digitalBG;
      case 2:
        return womensBG;
      case 3:
        return mensBG;
      case 4:
        return coupleBG;
      case 5:
        return womensBG2;
      case 6:
        return analogBG;
      case 7:
        return swiperBG;
      case 8:
        return swiperBG1;
      case 9:
        return swiperBG2;
      case 10:
        return swiperBG3;
      case 11:
        return swiperBG4;
      case 12:
        return swiperBG5;
      case 13:
        return swiperBG6;
      case 14:
        return swiperBG7;
      
      default:
        return coupleBG;
    }
  }
}
