import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/bottom_navigation_bar.dart';
import '../../widgets/common_widgets.dart';
import '../drawer_components/raise_issue/raise_issue_screen.dart';
import '../live_tracking_screen/live_tracking.dart';

class BookingDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Booking Details',
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            fontWeight: FontWeight.w700,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _couponInfo(),
              SizedBox(height: 15),
              _deliverInfoBox(),
              SizedBox(height: 10),
              TextButton(
                onPressed: _redirectPackageDetails,
                child: _packageDetailsBox(),
              ),
              SizedBox(height: 15),
              _driverDetails(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.to(RaiseIssueScreen());
                    },
                    child: Text('Any issue?'),
                  ),
                ],
              ),
              SizedBox(height: 50),
              RectangularButton(
                title: 'Track',
                onPressed: () {
                  Get.to(() => LiveTrackingScreen());
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyNavigationBar(),
    );
  }

  void _redirectPackageDetails() {
    Get.bottomSheet(
      backgroundColor: Colors.white,
      _packageDetailsBottomsheet(),
      isScrollControlled: true,
    );
  }

  Widget _couponInfo() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 5),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
      ),
      width: double.maxFinite,
      height: 70,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 20),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Order ID #456554343',
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }

  Widget _deliverInfoBox() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
      decoration: BoxDecoration(
        color: Color(0xFFe2e2e2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/icons/filledCircleGreen.png',
                          height: 14,
                          width: double.maxFinite,
                        ),
                        SizedBox(height: 2),
                        Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: SizedBox(
                            height: 66,
                            child: VerticalDivider(
                              width: 1,
                              thickness: 2,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: _pickupAndDeliver(pickupDetail: 'Pickup Detail'),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 0),
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.location_on, color: Colors.red),
                SizedBox(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: _pickupAndDeliver(pickupDetail: 'Dropoff Detail'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _packageDetailsBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xFFf2f2f2),
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.maxFinite,
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pacakage Details',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 8),
          Center(
            child: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }

  Widget _packageDetailsBottomsheet() {
    return SingleChildScrollView(
      child: Container(
        height: 600,
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 20),
        child: Column(
          children: [
            Container(
              height: 8,
              width: 200,
              decoration: BoxDecoration(
                color: Color(0xFFdadada),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            SizedBox(height: 24),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Package Details',
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _pacakageDetailContainer(),
                  SizedBox(height: 10),
                  _pacakageDetailContainer(),
                  SizedBox(height: 10),
                  _pacakageDetailContainer(),
                  SizedBox(height: 10),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _pacakageDetailContainer() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.only(left: 50, top: 15, right: 10),
      width: double.maxFinite,
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xfffbf6e2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Small ( Electronics )',
            style: GoogleFonts.getFont(
              'Roboto Condensed',
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          Text(
            '120-139 lbs.',
            style: GoogleFonts.getFont(
              'Roboto Condensed',
              fontWeight: FontWeight.w700,
              color: Colors.grey,
            ),
          ),
          Text(
            'required a 2 wheeler',
            style: GoogleFonts.getFont(
              'Roboto Condensed',
              fontWeight: FontWeight.w700,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _driverDetails() {
    final RatingController ratingController = Get.put(RatingController());
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFFfbf6e2),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Driver Details',
            style: GoogleFonts.getFont(
              'Roboto Condensed',
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/driverImage.png',
                  height: 72,
                  width: 72,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Desmond Miles',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            children: [
                              Obx(
                                () => RatingBar.builder(
                                  initialRating: ratingController.rating.value,
                                  minRating: 1,
                                  maxRating: 5,
                                  itemSize: 26,
                                  allowHalfRating: false,
                                  itemCount: 5,
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    ratingController.rating.value = rating;
                                  },
                                ),
                              ),
                              SizedBox(width: 5),
                              Obx(
                                () => Text(
                                  '${ratingController.rating.value}',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '50+ orders completed',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _pickupAndDeliver({required String pickupDetail}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$pickupDetail',
          style: GoogleFonts.getFont(
            'Roboto Condensed',

            fontSize: 15,
            color: Colors.grey.shade600,
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Maya Shrinivas',
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: '-8765656565',
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  color: Colors.black,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        Text(
          'Baner, Pune, Maharashtra',
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class RatingController extends GetxController {
  var rating = 4.0.obs;
}
