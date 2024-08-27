import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/common_widgets.dart';
import '../select_vehicle/select_vehicle_main.dart';

class InstructionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'New Request',
            style: GoogleFonts.getFont(
              'Roboto Condensed',
              fontWeight: FontWeight.w700,
              fontSize: 25,
              color: Colors.black,
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Material(
                  elevation: 3,
                  borderRadius: BorderRadius.circular(12.0),
                  shadowColor: Colors.black,
                  child: _pickupAndDeliver(),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: _showBottomSheet,
                  child: _deliveryInstructions(),
                ),
              ],
            ),
          ),
        ),
    );
  }

  void _showBottomSheet() {
    Get.bottomSheet(
      backgroundColor: Colors.white,
      _bottomSheetMain(),
      isScrollControlled: true,
    );
  }

  Widget _bottomSheetMain() {
    return Container(
      height: 400,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 20),
      child: Column(
        children: [
          Container(
            height: 10,
            width: 122,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          SizedBox(height: 24),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Instruction for the Parcel',
              style: GoogleFonts.getFont(
                'Roboto Condensed',
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 25),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 14),
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _userInstructionInput(),
                SizedBox(height: 4),
              ],
            ),
          ),
          SizedBox(height: 20),
          RectangularButton(
            onPressed: () {
              Get.to(SelectVehicle());
            },
            title: 'Continue',
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _userInstructionInput() {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
        child: TextFormField(
          maxLines: 3,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
          ),
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.circular(5),
            ),
            hintText:
                'The parcel will buy out the goods, receive cash or carry out other instructions.',
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

  Widget _pickupAndDeliver() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/pickup_deliver.png',
              height: 164, width: 20),
          SizedBox(width: 16),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pickup From',
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 12),
                    _addressBar(),
                    SizedBox(height: 45),
                    Text(
                      'Deliver to',
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 12),
                    _addressBar(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _addressBar() {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
        child: TextFormField(
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
          ),
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.circular(30),
            ),
            prefixIcon: Icon(Icons.add, color: Colors.grey),
            hintText: 'Add Address/Contact',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _deliveryInstructions() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      color: Color(0xFFf2f2f2),
      width: double.maxFinite,
      height: 75,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              'assets/icons/running_icon.png',
              height: 30,
              width: 20,
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Instruction for Delivery',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 296,
                    child: Text(
                      maxLines: 2,
                      'The parcel will buy out the goods, receive cash or carry out other   instructions.',
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 8),
          Center(
            child: TextButton(
              onPressed: () {
                Get.bottomSheet(
                  backgroundColor: Colors.white,
                  _bottomSheetMain(),
                  isScrollControlled: true,
                );
              },
              child: Image.asset(
                'assets/icons/play_icon.png',
                height: 30,
                width: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}




