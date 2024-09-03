import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/rectangular_button.dart';
import '../../../common/text_widget.dart';
import '../../../common/user_input_text_field.dart';
import '../../../navigation/routes.dart';
import '../../../utilities/constants/images_constants.dart';

class EmailLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Label(label:''),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                _startSection(),
                SizedBox(height: 10),
                UserInputTextField(
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Enter Your Email Address',
                ),
                SizedBox(height: 20),
                UserInputTextField(
                  keyboardType: TextInputType.visiblePassword,
                  hintText: 'Enter Your Password',
                ),
                SizedBox(height: 10),
                _textButtons(),
                SizedBox(height: 10),
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
              Get.toNamed(Routes.homeScreen);
            },
            title: 'Submit',
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _startSection() {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 30, width: double.maxFinite),
          Container(
            child: Image.asset(appLogo),
          ),
          SizedBox(height: 50),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Label(label:
                'Lets Start With Your',
                textAlign: TextAlign.left,
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _userEmailInput() {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
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
              hintText: 'Enter Your Email Id',
            ),
          ),
        ),
      ),
    );
  }

  Widget _userPasswordInput() {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
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
              hintText: 'Enter Your PassWord',
            ),
          ),
        ),
      ),
    );
  }

  Widget _textButtons() {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Label(label:
                  'New User?',
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.registrationScreen);
                  },
                  child: Label(label:
                    'Registration',
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: ColorsClass.basicBlue,
                    ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
