import 'package:famani_parcel_delivery/common/custom_appbar.dart';
import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/rectangular_button.dart';
import '../../../common/user_input_text_field.dart';
import '../../../navigation/routes.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: 'Registration',
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 50),
                _nameInput(),
                SizedBox(height: 25),
                UserInputTextField(
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Email Address',
                ),
                SizedBox(height: 25),
                UserInputTextField(
                  keyboardType: TextInputType.number,
                  hintText: 'Phone Number',
                ),
                SizedBox(height: 25),
                UserInputTextField(
                  keyboardType: TextInputType.visiblePassword,
                  hintText: 'Password',
                ),
                SizedBox(height: 25),
                UserInputTextField(
                  keyboardType: TextInputType.visiblePassword,
                  hintText: 'Confirm Password',
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RectangularButton(
            onPressed: () {
              Get.toNamed(Routes.uploadeIdentyScreen);
            },
            title: 'Next',
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _nameInput() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 155,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: ColorsClass.citrineWhite,
              border: Border.all(color: ColorsClass.basicBlack),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: TextFormField(
                style: TextStyle(
                  fontSize: 15,
                  color: ColorsClass.basicBlack,
                ),
                cursorColor: ColorsClass.basicBlack,
                decoration: const InputDecoration(
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: 'Enter First Nmae',
                ),
              ),
            ),
          ),
          Container(
            width: 155,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: ColorsClass.citrineWhite,
              border: Border.all(color: ColorsClass.basicBlack),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: TextFormField(
                style: TextStyle(
                  fontSize: 15,
                  color: ColorsClass.basicBlack,
                ),
                cursorColor: ColorsClass.basicBlack,
                decoration: const InputDecoration(
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: 'Enter Last Nmae',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
