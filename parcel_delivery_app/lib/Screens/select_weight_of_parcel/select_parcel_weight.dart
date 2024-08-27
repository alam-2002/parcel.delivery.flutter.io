import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import '../../widgets/common_widgets.dart';
import '../request_summary/request_summary.dart';

class SelectParcelWeight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Select Weight of Parcel',
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _selectVehicleSection(),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RectangularButton(
            onPressed: (){
              Get.to(RequestSummary());
            },
            title: 'Proceed',
          ),
          SizedBox(height: 20),
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
              backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
              foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
              minimumSize: WidgetStateProperty.all<Size>(Size(400, 90)),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            onPressed: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Weight',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                Text(
                  '120-130 lbs.',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
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
                  Size(400, 90)),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            onPressed: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Weight',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                Text(
                  '120-130 lbs.',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w700,
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
              minimumSize: WidgetStateProperty.all<Size>(Size(400, 90)),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            onPressed: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Weight',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                Text(
                  '120-130 lbs.',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w700,
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
              minimumSize: WidgetStateProperty.all<Size>(Size(400, 90)),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            onPressed: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Weight',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                Text(
                  '120-130 lbs.',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
