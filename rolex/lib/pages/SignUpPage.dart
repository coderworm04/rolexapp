// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rolex/consts/colors-consts.dart';
import 'package:rolex/consts/fontstyles-consts.dart';
import 'package:rolex/consts/images-consts.dart';
import 'package:rolex/pages/SignInPage.dart';
import 'package:rolex/widgets/AppLogoWidgets.dart';
import 'package:rolex/widgets/BgWidgets.dart';
import 'package:rolex/widgets/ButtonWidget.dart';
import 'package:rolex/widgets/TextFormWidgets.dart';
import 'package:http/http.dart' as http;


class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
 bool? isCheak = false;
 TextEditingController name = TextEditingController();
 TextEditingController email = TextEditingController();
 TextEditingController password = TextEditingController();
 TextEditingController retypepassword = TextEditingController();
 Future<void> registerUser() async {
    try {
      String url = "http://localhost/rolex/signup.php";
      var result = await http.post(Uri.parse(url), body: {
        "name": name.text,
        "email": email.text,
        "password": password.text,
        "retypepassword": retypepassword.text,
      }); 
      var response = jsonDecode(result.body);
      if (response["success"] == "true") {
        print("User Registered");
        Navigator.pushReplacement(context, 
        MaterialPageRoute(builder: (context) => SignInPage()
        ));
      } 
      else {
        print("Registered Failed");
      }
    } catch (e) {
      print("Error : $e");
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
                  Text("Login to Relex", style: TextStyle(
                          fontFamily: bold, fontSize: 22, 
                          color: whiteColor,
                  ),),
                  SizedBox(height: 20,),
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
                            offset:Offset(0, 2),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(20),
                      child: Column(
                      children: [    
                          TextFormFieldWidget(hint: 'Name',title: 'Name', controller: name),
                          TextFormFieldWidget(hint: 'Email',title: 'Email', controller: email),
                          TextFormFieldWidget(hint: '********',title: 'Password', controller: password),
                          TextFormFieldWidget(hint: '********',title: 'Retype Password', controller: retypepassword),
                          SizedBox(height: 10,),
                          Row(
                    children: [
                      Checkbox(
                        checkColor: GreenColor,
                        value: isCheak, 
                        onChanged: (newValue){
                          setState(() {
                            isCheak = newValue;
                          });
                        },
                      ),
                      Expanded(
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "I agree to the ", style: TextStyle(fontFamily: bold, color: fontGrey,fontSize: 13)
                              ),
                              TextSpan(
                                text: "Treams and Conditions ", style: TextStyle(fontFamily: bold, color: GreenColor,fontSize: 13)
                              ),
                              TextSpan(
                                text: " & ", style: TextStyle(fontFamily: bold, color: fontGrey,fontSize: 13)
                              ),
                              TextSpan(
                                text: "Privicy Policy", style: TextStyle(fontFamily: bold, color: GreenColor,fontSize: 13)
                              ), 
                            ]
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                          ButtonWidgets(
                            color: GreenColor,
                            buttontitle: "Sign up",
                            textcolor: whiteColor,
                            onpress: (){
                              registerUser();
                              name.clear();
                              email.clear();
                              password.clear();
                              retypepassword.clear();
                            },
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyle(fontFamily: bold, color: fontGrey,fontSize: 13),
                              ),
                              GestureDetector(
                                onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) => SignInPage()
                              ));
                                },
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(fontFamily: bold, color: GreenColor,fontSize: 13)
                                ),
                              ),
                            ],
                          )
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