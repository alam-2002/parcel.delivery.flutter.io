import 'package:famani_parcel_delivery/navigation/routes.dart';
import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:country_list_pick/country_list_pick.dart';
import '../../../common/rectangular_button.dart';
import '../../../common/text_widget.dart';
import '../../../utilities/constants/images_constants.dart';

class PhoneLoginScreen extends StatelessWidget {
  const PhoneLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Label(label: ''),
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
              Get.toNamed(Routes.otpScreen);
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
            child: Image.asset(appLogo),
          ),
          SizedBox(height: 50),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Label(
                label: 'Lets Start With Your',
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
                color: ColorsClass.citrineWhite,
                border: Border.all(
                  color: ColorsClass.basicBlack,
                ),
                borderRadius: BorderRadius.circular(5)),
            child: CountryListPick(
              appBar: AppBar(
                iconTheme: IconThemeData(
                  color: ColorsClass.basicWhite,
                ),
                centerTitle: true,
                backgroundColor: ColorsClass.primaryRed,
                title: Label(
                  label: 'Choose Your Contry',
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: ColorsClass.basicWhite,
                ),
              ),
              theme: CountryTheme(
                alphabetSelectedBackgroundColor: ColorsClass.primaryRed,
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
      ),
    );
  }

  Widget _userPhoneInput() {
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
            keyboardType: TextInputType.number,
            style: TextStyle(
              fontSize: 15,
              color: ColorsClass.basicBlack,
            ),
            cursorColor: ColorsClass.basicBlack,
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
          Label(
            label: 'OTP has been sent on your mobile number',
            fontWeight: FontWeight.w500,
            fontSize: 15,
            color: ColorsClass.greyShade600,
          ),
          Container(
            padding: EdgeInsets.only(right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Label(
                  label: 'Login With',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.emailLoginScreen);
                  },
                  child: Label(
                    label: 'Email',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: ColorsClass.basicBlue,
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
                Label(
                  label: 'New User?',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.registrationScreen);
                  },
                  child: Label(
                    label: 'Registration',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
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
