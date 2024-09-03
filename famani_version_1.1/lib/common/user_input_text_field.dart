import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/colors_class.dart';

class UserInputTextField extends StatelessWidget {

  String hintText;
  TextInputType keyboardType;

  UserInputTextField({
    super.key,
    required this.hintText,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18, right: 18),
      child: Container(
        decoration: BoxDecoration(
          color: ColorsClass.citrineWhite,
        ),
        child: TextFormField(
          keyboardType: keyboardType,
          style: TextStyle(
            color: ColorsClass.basicBlack,
          ),
          cursorColor: ColorsClass.basicGrey,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorsClass.basicGrey, width: 2.0),
              borderRadius: BorderRadius.circular(5),
            ),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: ColorsClass.basicGrey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}