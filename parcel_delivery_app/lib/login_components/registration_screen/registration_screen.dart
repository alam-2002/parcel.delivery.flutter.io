import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parcel_delivery_app/login_components/registration_screen/uploade_identy.dart';
import '../../widgets/common_widgets.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Registration',
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            fontWeight: FontWeight.w700,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 50),
                _nameInput(),
                SizedBox(height: 25),
                _userTextInput(hintText: 'Enter your Email Id'),
                SizedBox(height: 25),
                _userPhoneInput(),
                SizedBox(height: 25),
                _userTextInput(hintText: 'Password'),
                SizedBox(height: 25),
                _userTextInput(hintText: 'Confirm Password'),
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
              Get.to(() => UploadeIdenty());
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
              color: Color(0xFFfbf6e2),
              border: Border.all(color: Colors.black),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: TextFormField(
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
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
              color: Color(0xFFfbf6e2),
              border: Border.all(color: Colors.black),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: TextFormField(
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
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

  Widget _userTextInput({required String hintText}) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xFFfbf6e2),
          border: Border.all(color: Colors.black),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: TextFormField(
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
            cursorColor: Colors.black,
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: '$hintText',
            ),
          ),
        ),
      ),
    );
  }

  Widget _userPhoneInput() {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xFFfbf6e2),
          border: Border.all(color: Colors.black),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: TextFormField(
            keyboardType: TextInputType.number,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
            cursorColor: Colors.black,
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: 'Enter your Phone number',
            ),
          ),
        ),
      ),
    );
  }
}
