import 'package:famani_parcel_delivery/common/custom_appbar.dart';
import 'package:famani_parcel_delivery/common/text_widget.dart';
import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/bottom_navigation_bar.dart';
import '../../../../common/rectangular_button.dart';
import '../../../../common/user_input_text_field.dart';
import '../../../../navigation/routes.dart';
import '../../../../utilities/constants/images_constants.dart';


class MyProfileScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: 'My Profile',
        appBar: AppBar(),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 30),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 105,
                        width: 110,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              profilePicture,
                              height: 105,
                              width: double.maxFinite,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset(
                                cameraIcon,
                                height: 36,
                                width: 36,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 62),
                      UserInputTextField(
                        hintText: 'Full Name',
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 16),
                      UserInputTextField(
                        hintText: 'Email Id',
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 16),
                      UserInputTextField(
                        hintText: 'Phone Number',
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: TextButton(
                            onPressed: () {},
                            child: Label( label:
                              'Update Password',
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: ColorsClass.basicBlue,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      RectangularButton(
                        title: 'Save Changes',
                        onPressed: () {
                          Get.offNamed(Routes.bookingScreenMain);
                        },
                      ),
                      SizedBox(height: 5),
                      TextButton(
                        onPressed: () {
                          Get.offNamed(Routes.bookingScreenMain);
                        },
                        child: Label(
                          label: 'Delete Account',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyNavigationBar(),
    );
  }
}
