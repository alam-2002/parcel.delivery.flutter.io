import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parcel_delivery_app/widgets/bottom_navigation_bar.dart';
import '../../../widgets/common_widgets.dart';

class MyProfileScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Profile',
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            fontWeight: FontWeight.w700,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
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
                              'assets/images/profilePic.png',
                              height: 105,
                              width: double.maxFinite,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset(
                                'assets/icons/cameraIcon.png',
                                height: 36,
                                width: 36,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 62),
                      _userNameInput(),
                      SizedBox(height: 16),
                      _userEmailInput(),
                      SizedBox(height: 16),
                      _userPhoneInput(),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Update Password',
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      RectangularButton(
                        title: 'Save Changes',
                        onPressed: () {
                          Get.back();
                        },
                      ),
                      SizedBox(height: 5),
                      TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text(
                          'Delete Account',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.black,
                          ),
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

  Widget _userNameInput() {
    return Padding(
      padding: EdgeInsets.only(left: 18, right: 18),
      child: Container(
        color: Color(0xFFfbf6e2),
        child: TextFormField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Colors.black,
          ),
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.circular(5),
            ),
            // prefixIcon: Icon(Icons.search, color: Colors.grey),
            hintText: 'Full Name',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _userPhoneInput() {
    return Padding(
      padding: EdgeInsets.only(left: 18, right: 18),
      child: Container(
        color: Color(0xFFfbf6e2),
        child: TextFormField(
          keyboardType: TextInputType.number,
          style: TextStyle(
            color: Colors.black,
          ),
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.circular(5),
            ),
            // prefixIcon: Icon(Icons.search, color: Colors.grey),
            hintText: 'Phone Number',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _userEmailInput() {
    //fbf6e2
    return Padding(
      padding: EdgeInsets.only(left: 18, right: 18),
      child: Container(
        color: Color(0xFFfbf6e2),
        child: TextFormField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Colors.black,
          ),
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.circular(5),
            ),
            // prefixIcon: Icon(Icons.search, color: Colors.grey),
            hintText: 'Email Id',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
