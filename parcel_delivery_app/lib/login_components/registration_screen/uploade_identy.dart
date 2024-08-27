import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parcel_delivery_app/Screens/home_screen.dart';
import '../../widgets/common_widgets.dart';
import 'date_controller.dart';

class UploadeIdenty extends StatelessWidget {
  final DateController dateController = Get.put(DateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          overflow: TextOverflow.ellipsis,
          'Upload picture of aadhaar card',
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 25),
                _uploadePhotoSection(),
                SizedBox(height: 50),
                _userAadhaarInput(),
                SizedBox(height: 20),
                SelectDOB(),
                SizedBox(height: 50)
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

  Widget _uploadePhotoSection() {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      width: double.maxFinite,
      child: DottedBorder(
        color: Colors.grey,
        padding: const EdgeInsets.only(left: 6, right: 6, top: 6, bottom: 6),
        strokeWidth: 6,
        radius: Radius.circular(5),
        borderType: BorderType.RRect,
        dashPattern: [12, 10],
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/icons/cameraPlus.png',
                  height: 32,
                  width: 30,
                ),
              ),
              SizedBox(width: 12),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 2),
                  child: Text(
                    'Upload/Take Photo',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _userAadhaarInput() {
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
              hintText: 'Enter your aadhaar card number',
            ),
          ),
        ),
      ),
    );
  }
}

class SelectDOB extends StatelessWidget {
  final DateController dateController = Get.put(DateController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Center(
        child: TextFormField(
          controller: dateController.dateController,
          decoration: InputDecoration(
            labelText: 'Select Date',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            suffixIcon: Icon(Icons.calendar_today),
          ),
          readOnly: true,
          onTap: () => dateController.pickDate(context),
        ),
      ),
    );
  }
}
