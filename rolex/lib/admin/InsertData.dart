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


class ProductDataAdd extends StatefulWidget {
  const ProductDataAdd({super.key});

  @override
  State<ProductDataAdd> createState() => _ProductDataAddState();
}

class _ProductDataAddState extends State<ProductDataAdd> {
 bool? isCheak = false;
 TextEditingController name = TextEditingController();
 TextEditingController description = TextEditingController();
 TextEditingController rating = TextEditingController();
 TextEditingController categories = TextEditingController();
 TextEditingController price = TextEditingController();

 Future<void> registerUser() async {
    try {
      String url = "http://localhost/rolex/ProductDataAdd.php";
      var result = await http.post(Uri.parse(url), body: {
        "name": name.text,
        "description": description.text,
        "rating": rating.text,
        "categories": categories.text,
        "price": price.text,

      }); 
      var response = jsonDecode(result.body);
      if (response["success"] == "true") {
        print("Product Add");
        // Navigator.pushReplacement(context, 
        // MaterialPageRoute(builder: (context) => SignInPage()
        // ));
      } 
      else {
        print("Product Not Add");
      }
    } catch (e) {
      print("Error : $e");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: 
      AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: whiteColor,),
          onPressed: () => Navigator.pop(context),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: GreenColor,
      title: Text("Admin", style: TextStyle(color: whiteColor),),
      ),
      body: SingleChildScrollView(
       child: Container(
        height: 800,
        padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                color: lightGrey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )
              ),
              child:   Positioned(
            top: 40,
            left: 10,
            right: 10,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 0.1),
                  Text("Add Producds", style: TextStyle(
                          fontFamily: bold, fontSize: 22, 
                          color: GreenColor,
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
                          TextFormFieldWidget(hint: 'Descriptiom',title: 'Descriptiom', controller: description),
                          TextFormFieldWidget(hint: 'Rating',title: 'Rating', controller: rating),
                          TextFormFieldWidget(hint: 'Categories',title: 'Categories', controller: categories),
                          TextFormFieldWidget(hint: 'Price',title: 'Price', controller: price),
                          SizedBox(height: 10,),
                  SizedBox(height: 10,),
                          ButtonWidgets(
                            color: GreenColor,
                            buttontitle: "Add",
                            textcolor: whiteColor,
                            onpress: (){
                              registerUser();
                              name.clear();
                              description.clear();
                              categories.clear();
                              rating.clear();
                              price.clear();
                            },
                          ),
                          SizedBox(height: 10,),
                      ],
                    ),
                    ),
                ],
              ),
            ),
          ),
       ),
      ),
    );
  }
}

