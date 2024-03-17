import 'package:flutter/material.dart';
import 'package:rolex/consts/colors-consts.dart';
import 'package:rolex/consts/fontstyles-consts.dart';


          
  Widget TextFormFieldWidget({String? title,String? hint, controller, ErrorText }){
    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                              Text(
                                title!,
                                style: TextStyle(
                                  color: GreenColor,
                                  fontFamily: semibold,
                                  fontSize: 16,
                                ),
                              ),
                      SizedBox(height: 5),
                              TextFormField(
                                controller: controller,
                                decoration: InputDecoration(
                                  hintStyle:TextStyle(
                                    fontFamily: semibold,
                                    color: textfieldGrey,
                                  ),
                                  hintText: hint,
                                  errorText: ErrorText,
                                  isDense: true,
                                  fillColor: Colors.grey.shade200,
                                  filled: true,
                                  border: InputBorder.none,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: GreenColor,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                            ],
                     );
  }