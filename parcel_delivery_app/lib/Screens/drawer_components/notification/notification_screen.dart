import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parcel_delivery_app/widgets/bottom_navigation_bar.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Notifications',
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
            margin: EdgeInsets.symmetric(horizontal: 5),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              //fde5dd
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: _notificationBox(
                      bgColor: Color(0xFFd0f2d3),
                      title: 'Lorem Ipsum Proin felis',
                      time: 'Yesterday',
                      description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu at quis'),
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: double.maxFinite,
                  child: _notificationBox(
                      bgColor: Color(0xFFfde5dd),
                      title: 'Lorem Ipsum Proin felis',
                      time: 'Yesterday',
                      description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu at quis'),
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: double.maxFinite,
                  child: _notificationBox(
                      bgColor: Color(0xFFfffcc7),
                      title: 'Lorem Ipsum Proin felis',
                      time: 'Yesterday',
                      description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu at quis'),
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: double.maxFinite,
                  child: _notificationBox(
                      bgColor: Color(0xFFe5e3e2),
                      title: 'Lorem Ipsum Proin felis',
                      time: 'Yesterday',
                      description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu at quis'),
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: double.maxFinite,
                  child: _notificationBox(
                      bgColor: Color(0xFFc0d1fd),
                      title: 'Lorem Ipsum Proin felis',
                      time: 'Yesterday',
                      description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu at quis'),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: MyNavigationBar(),
    );
  }

  Widget _notificationBox({
    required String title,
    required String description,
    required String time,
    required Color bgColor,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bgColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(bottom: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$title',
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontWeight: FontWeight.w800,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '$description',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 28),
          Text(
            '$time',
            style: GoogleFonts.getFont(
              'Roboto Condensed',
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }
}
