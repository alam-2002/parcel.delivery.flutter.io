import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dotted_border/dotted_border.dart';

class ApplyCoupons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Apply Coupons',
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _couponBody(),
              SizedBox(height: 10),
              _couponBody(),
            ],
          ),
        ),
      )
    );
  }

  Widget _couponBody(){
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFFfbf6e2),
        boxShadow: [
          BoxShadow(
            color: Color(0x40000000),
            offset: Offset(0, 0),
            blurRadius: 3,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 2),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DottedBorder(
                  color: Colors.black,
                  padding:
                  EdgeInsets.only(left: 1, top: 1, right: 1, bottom: 1),
                  strokeWidth: 1,
                  dashPattern: [3, 3],
                  child: Container(
                    padding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'TRYNEW',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Text(
                      'Apply',
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              'Get 30% off',
              style: GoogleFonts.getFont(
                'Roboto Condensed',
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 6),
          Padding(
            padding: EdgeInsets.only(left: 6),
            child: Text(
              'Use code TRYNEW & get 30% off on orders above AED 20.00. Maximum discount:AED 2.00',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.getFont(
                'Roboto Condensed',
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
