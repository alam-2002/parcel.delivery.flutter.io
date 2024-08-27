import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:parcel_delivery_app/Screens/home_screen.dart';
import '../../widgets/common_widgets.dart';

class OtpScreen extends StatelessWidget {
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
                SizedBox(height: 5),
                _startSection(),
                SizedBox(height: 20),
                _otpField(),
                SizedBox(height: 10),
                _resendText(),
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
              alignment: Alignment.center,
              child: Text(
                'Verify your mobile number',
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 18),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'OTP',
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _otpField() {
    return Container(
      alignment: Alignment.center,
      child: OTPTextField(
        length: 5,
        width: double.maxFinite,
        fieldWidth: 50,
        style: TextStyle(fontSize: 17),
        textFieldAlignment: MainAxisAlignment.spaceAround,
        fieldStyle: FieldStyle.box,
        onCompleted: (pin) {
          print("Completed: " + pin);
        },
      ),
    );
  }

  Widget _resendText() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Didn’t received OTP? ',
            style: GoogleFonts.getFont(
              'Roboto Condensed',
              fontWeight: FontWeight.w500,
              fontSize: 17,
              color: Colors.black,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Resend code',
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
    );
  }
}
