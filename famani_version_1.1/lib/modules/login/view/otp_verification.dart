import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import '../../../common/rectangular_button.dart';
import '../../../common/text_widget.dart';
import '../../../utilities/constants/images_constants.dart';
import '../../home/home_screen/view/home_screen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
            child: Image.asset(appLogo),
          ),
          SizedBox(height: 50),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Align(
              alignment: Alignment.center,
              child: Label(label:
                'Verify your mobile number',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: ColorsClass.greyShade600,
                ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 18),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Label(label:
                'OTP',
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
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
          Label(label:
            'Didn’t received OTP? ',
              fontWeight: FontWeight.w500,
              fontSize: 17,
              color: ColorsClass.basicBlack,
          ),
          TextButton(
            onPressed: () {},
            child: Label(label:
              'Resend code',
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: ColorsClass.basicBlue,
            ),
          ),
        ],
      ),
    );
  }
}
