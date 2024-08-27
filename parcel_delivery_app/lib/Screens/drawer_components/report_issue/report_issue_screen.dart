import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class ReportIssueScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Report issue',
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            fontWeight: FontWeight.w700,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                _reportIssueStack(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: (){},
            child: Image.asset(
              'assets/icons/fabButton.png',
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _reportIssueStack() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        color: Color(0xFFfbf6e2),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 194,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Personal Issue',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Issue Date',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'June 10 2023',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Status',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Open',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                  decoration: BoxDecoration(
                    color: Color(0xFFbf1e2e),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(34)),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'issue',
                        style: GoogleFonts.getFont(
                          'Roboto Condensed',
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        '#3423',
                        style: GoogleFonts.getFont(
                          'Roboto Condensed',
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
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
