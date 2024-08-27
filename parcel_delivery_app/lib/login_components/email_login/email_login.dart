import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Screens/home_screen.dart';
import '../../widgets/common_widgets.dart';
import '../registration_screen/registration_screen.dart';

class EmailLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                _startSection(),
                SizedBox(height: 10),
                _userEmailInput(),
                SizedBox(height: 20),
                _userPasswordInput(),
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
              Get.to(() => HomeScreen());
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
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
          SizedBox(height: 50),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Lets Start With Your',
                textAlign: TextAlign.left,
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                  color: Colors.black,
                ),
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
                Text(
                  'New User?',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => RegistrationScreen());
                  },
                  child: Text(
                    'Registration',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Colors.blue,
                    ),
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
