// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:rolex/consts/colors-consts.dart';
import 'package:rolex/consts/export-consts.dart';
import 'package:rolex/pages/HomePage.dart';
import 'package:rolex/pages/SignInPage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:rolex/widgets/AppLogoWidgets.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToHome();
  }
  void navigateToHome() async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignInPage()));
  }
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
  backgroundColor: GreenColor,
  splash: Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset("assets/icons/logo-y.png", fit: BoxFit.fill, height: 60, width: 60), // Reduce image height to fit within screen
      Text('Rolex', style: TextStyle(fontSize: 12, fontFamily: bold, color: whiteColor)),
    ],
  ),
  nextScreen: SignInPage(),
  splashTransition: SplashTransition.scaleTransition,
);

  }
}
      
//

// AnimatedSplashScreen(
//   splash: Center(
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Image.asset('assets/images/applogo.png'),
//         Text('Rolex', style: TextStyle(fontSize: 32, color: Colors.white)),
//         Text('Version 0.1.01', style: TextStyle(fontSize: 16, color: Colors.white)),
//       ],
//     ),
//   ),
//   nextScreen: SignInPage(),
//   splashTransition: SplashTransition.scaleTransition,
//   pageTransitionType: PageTransitionType.fade,
// )











//
      // child: Scaffold(
      //   backgroundColor: GreenColor,
      //   body: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         // App logo
      //         Image.asset(
      //           "assets/icons/logo-y.png",
      //           height: 100,
      //           width: 100 ,
      //         ),
      //         Text(
      //           'Rolex',
      //           style: TextStyle(
      //             fontFamily: bold,
      //             fontSize: 22,
      //             color: Colors.white,
      //           ),
      //         ),
      //         const SizedBox(height: 1),
      //         Text(
      //           'Version 1.0.0',
      //           style: TextStyle(
      //             fontSize: 10,
      //             color: Colors.white,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
  