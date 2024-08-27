import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/common_widgets.dart';
import '../email_login/email_login.dart';
import '../otp_screen/otp_screen.dart';
import '../registration_screen/registration_screen.dart';

class PhoneLoginScreen extends StatelessWidget {
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
                _countrySelector(),
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
              Get.to(() => OtpScreen());
            },
            title: 'Get OTP',
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

  Widget _countrySelector() {
    return Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(left: 0, right: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, right: 0),
              decoration: BoxDecoration(
                  color: Color(0xFFfbf6e2),
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(5)),
              child: CountryListPick(
                appBar: AppBar(
                  iconTheme: IconThemeData(
                    color: Colors.white,
                  ),
                  centerTitle: true,
                  backgroundColor: Color(0xFFbf1e2e),
                  title: Text(
                    'Choose Your Contry',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                theme: CountryTheme(
                  alphabetSelectedBackgroundColor: Color(0xFFbf1e2e),
                  isShowFlag: true,
                  isShowTitle: false,
                  isShowCode: true,
                  isDownIcon: true,
                  showEnglishName: true,
                ),
                initialSelection: '+91',
                onChanged: (CountryCode? code) {
                  // print(code.name);
                  // print(code.code);
                  // print(code.dialCode);
                  // print(code.flagUri);
                },
                useUiOverlay: true,
                useSafeArea: false,
              ),
            ),
            Expanded(child: _userPhoneInput())
          ],
        ));
  }

  Widget _userPhoneInput() {
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
            keyboardType: TextInputType.number,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
            cursorColor: Colors.black,
            decoration: const InputDecoration(
              enabledBorder: InputBorder.none,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: 'Enter Your Phone Number',
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
          Text(
            'OTP has been sent on your mobile number',
            style: GoogleFonts.getFont(
              'Roboto Condensed',
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: Colors.grey.shade600,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Login With',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => EmailLogin());
                  },
                  child: Text(
                    'Email',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
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
                    fontSize: 15,
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
                      fontSize: 15,
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
