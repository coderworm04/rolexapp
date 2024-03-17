// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rolex/consts/colors-consts.dart';
import 'package:rolex/consts/fontstyles-consts.dart';
import 'package:rolex/consts/images-consts.dart';
import 'package:rolex/pages/BottomNavigationBar.dart';
import 'package:rolex/pages/HomePage.dart';
import 'package:rolex/pages/SignUpPage.dart';
import 'package:rolex/widgets/AppLogoWidgets.dart';
import 'package:rolex/widgets/BgWidgets.dart';
import 'package:rolex/widgets/ButtonWidget.dart';
import 'package:rolex/widgets/TextFormWidgets.dart';
import 'package:http/http.dart' as http;

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  String emailError = "";
  String passwordError = "";

  Future<void> loginadmin() async {
    setState(() {
      emailError = "";
      passwordError = "";
    });
    try {
      if(email.text.isEmpty || password.text.isEmpty)
        {
          if(email.text.isEmpty)
          {
            setState(() {
              emailError= "Username is Required";
            });
          }
          if(password.text.isEmpty)
          {
            setState(() {
              passwordError = "Password is Required";
            });
          }
        }

      String url = "http://localhost/rolex/signin.php";
      var response = await http.post(Uri.parse(url), body: {
        "email": email.text,
        "password": password.text,
      });

      var check = jsonDecode(response.body);

      if (check["success"] == "true") {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => BottomNavBar()));
      } else {
        print("Login Failed");
        email.clear();
        password.clear();
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Background image
          Image.asset(
            BgG1,
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),

          // Content
          Positioned(
            top: 40,
            left: 10,
            right: 10,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppLogoWidgets(),
                  SizedBox(height: 0.1),
                  Text(
                    "Login to Relex",
                    style: TextStyle(
                      fontFamily: bold,
                      fontSize: 22,
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2.0,
                          blurRadius: 4.0,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        TextFormFieldWidget(
                            hint: 'Email',
                            title: 'Email',
                            controller: email,
                            ErrorText: email.text),
                        TextFormFieldWidget(
                            hint: '********',
                            title: 'Password',
                            controller: password,
                            ErrorText: password.text),
                        SizedBox(
                          height: 10,
                        ),
                        ButtonWidgets(
                          color: GreenColor,
                          buttontitle: "Sign In",
                          textcolor: whiteColor,
                          onpress: () {
                            loginadmin();
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Or Create a New Account",
                          style: TextStyle(
                            color: fontGrey,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ButtonWidgets(
                          color: lightGreenColor1,
                          buttontitle: "Sign Up",
                          textcolor: GreenColor,
                          onpress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpPage(),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 10),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Or ",
                                style: TextStyle(fontFamily: bold, color: fontGrey,fontSize: 13),
                              ),
                              GestureDetector(
                                onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) => BottomNavBar()
                              ));
                                },
                                child: Text(
                                  "Guest Mode",
                                  style: TextStyle(fontFamily: bold, color: GreenColor,fontSize: 13)
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
