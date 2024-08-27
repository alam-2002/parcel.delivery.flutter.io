import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/common_widgets.dart';
import '../select_parcel_type/select_parcel_type.dart';

class SelectVehicle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select Vehicle',
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _pickupAndDeliver(),
            SizedBox(height: 10),
            _selectVehicleSection(),
            SizedBox(height: 10),
            RectangularButton(
              onPressed: (){
                Get.to(SelectParcel());
              },
              title: 'Proceed with 2 Wheeler',
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _pickupAndDeliver() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0x1A000000)),
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color(0x40000000),
            offset: Offset(0, 0),
            blurRadius: 2,
          ),
        ],
      ),
      height: 200,
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/pickup_deliver.png',
            height: 110,
            width: 20,
          ),
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
                      'Pickup Details',
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Maya Shrinivas-8765656565',
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Baner, Pune, Maharashtra',
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Dropoff Details',
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Maya Shrinivas-8765656565',
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Baner, Pune, Maharashtra',
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: 50),
              InkWell(
                onTap: () {
                  print('testing');
                },
                child: Image.asset(
                  'assets/icons/up_down_arrow.png',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _selectVehicleSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(
        horizontal: 14,
      ),
      child: Column(
        children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return Colors.white;
                }
                return Colors.black;
              }),
              foregroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return Colors.black;
                }
                return Colors.white;
              }),
              minimumSize: WidgetStateProperty.all<Size>(
                  Size(200, 70)),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Image.asset('assets/images/two_wheeler.png'),
                SizedBox(width: 20),
                Text(
                  '2 Wheeler',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,

                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
              foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
              minimumSize: WidgetStateProperty.all<Size>(Size(200, 70)),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Image.asset('assets/images/four_wheeler.png'),
                SizedBox(width: 20),
                Text(
                  '4 Wheeler',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
              foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
              minimumSize: WidgetStateProperty.all<Size>(Size(200, 70)),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Image.asset('assets/images/pickup.png'),
                SizedBox(width: 20),
                Text(
                  'Pickup 8ft',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
              foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
              minimumSize: WidgetStateProperty.all<Size>(Size(200, 70)),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Image.asset('assets/images/four_wheeler.png'),
                SizedBox(width: 20),
                Text(
                  '4 Wheeler',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
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
