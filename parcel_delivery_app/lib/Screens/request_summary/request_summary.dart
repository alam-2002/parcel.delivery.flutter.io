import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import '../../widgets/common_widgets.dart';
import '../booking_screen_main/booking_screen_main.dart';
import '../select_parcel_type/select_parcel_type.dart';
import 'apply_coupons.dart';


class RequestSummary extends StatelessWidget {
  final CheckboxController checkboxController = Get.put(CheckboxController());
  var isChecked;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Request Summary',
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            fontWeight: FontWeight.w700,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _deliverInfoBox(),
            SizedBox(height: 20),
            _vehicleDetailsBox(),
            SizedBox(height: 15),
            TextButton(
              onPressed: _redirectPackageDetails,
              child: _packageDetailsBox(),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: _redirectPaymentDetails,
              child: _paymentDetailsBox(),
            ),
            SizedBox(height: 10),
            _deliveryFareBox(),
            SizedBox(height: 10),
            _couponInfo(),
            SizedBox(height: 10),
            _confirmationBox(),
            SizedBox(height: 10),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RectangularButton(
            onPressed: () {
              Get.to(BookingScreenMain());
            },
            title: 'Confirm',
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  void _redirectPackageDetails() {
    Get.bottomSheet(
      backgroundColor: Colors.white,
      _packageDetailsBottomsheet(),
      isScrollControlled: true,
    );
  }

  void _redirectPaymentDetails() {
    Get.bottomSheet(
      backgroundColor: Colors.white,
      _paymentDetailsBottomsheet(),
      isScrollControlled: true,
    );
  }

  Widget _deliverInfoBox() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
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
                          'assets/icons/filledCircle.png',
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
                              color: Colors.white,
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
                Icon(Icons.location_on, color: Colors.white),
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

  Widget _vehicleDetailsBox() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: Color(0xFFf2f2f2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6),
            child: Text(
              'Vehicle Details',
              style: GoogleFonts.getFont(
                'Roboto Condensed',
                fontWeight: FontWeight.w700,
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  alignment: Alignment.center,
                  'assets/images/two_wheeler.png',
                  height: 70,
                  width: 96,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 22, bottom: 20),
                  child: Text(
                    '2 Wheeler',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: 17.6),
                Padding(
                  padding: EdgeInsets.only(left: 0, bottom: 20),
                  child: Text(
                    'GHS 6.90',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 14),
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
          SizedBox(width: 20),
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

  Widget _paymentDetailsBox() {
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
          SizedBox(width: 20),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Who will pay the cash?',
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

  Widget _paymentDetailsBottomsheet() {
    return Container(
      height: 400,
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
              'Who will Pay the Cash?',
              style: GoogleFonts.getFont(
                'Roboto Condensed',
                fontWeight: FontWeight.w700,
                fontSize: 25,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 25),
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
                _paymentdetailsContainer(),
                SizedBox(height: 4),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _paymentdetailsContainer() {
    return Container(
      height: 150,
      margin: EdgeInsets.symmetric(horizontal: 9),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFBF6E2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: SizedBox(
                      width: 270,
                      child: Text(
                        'Sender',
                        style: GoogleFonts.getFont(
                          'Roboto Condensed',
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(right: 0),
                    child: SizedBox(
                      width: 14,
                      height: 14,
                      child: Obx(
                        () => Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                            value: checkboxController.isChecked.value,
                            onChanged: (bool? newValue) {
                              checkboxController.toggleCheckbox();
                            },
                            autofocus: false,
                            checkColor: Colors.white,
                            fillColor: WidgetStatePropertyAll<Color>(
                                Color(0xFFBF1E2E)),
                            side: BorderSide(
                              color: Colors.black,
                            ),
                            activeColor: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
              child: Divider(
                thickness: 2,
                endIndent: 28,
                indent: 28,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: SizedBox(
                      width: 270,
                      child: Text(
                        'Receiver',
                        style: GoogleFonts.getFont(
                          'Roboto Condensed',
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(right: 0),
                    child: SizedBox(
                      width: 14,
                      height: 14,
                      child: Obx(
                        () => Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                            value: checkboxController.isChecked.value,
                            onChanged: (bool? newValue) {
                              checkboxController.toggleCheckbox();
                            },
                            autofocus: false,
                            checkColor: Colors.white,
                            fillColor: WidgetStatePropertyAll<Color>(
                                Color(0xFFBF1E2E)),
                            side: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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

  Widget _deliveryFareBox() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 8, right: 12),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        color: Color(0xFFfbf6e2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Delivery fare',
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 18, right: 6),
            child: _subAmountInfo(
              subtotal: 'Subtotal',
              price: 'GHS 345',
            ),
          ),
          SizedBox(height: 14),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 18, right: 6),
            child: _subAmountInfo(
              subtotal: 'Discount',
              price: 'GHS 0.0',
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          ),
          SizedBox(height: 8),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    'Total Amount',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'GHS 345',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _couponInfo() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 5),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.maxFinite,
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 20),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'No Coupon Applied',
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(()=> ApplyCoupons());
                    },
                    child: Text(
                      'Apply Coupon',
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
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
            child: IconButton(
              onPressed: () {
                Get.to(()=> ApplyCoupons());
              },
              icon: Icon(Icons.arrow_forward_ios),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _confirmationBox() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        color: Color(0xFFfbf6e2),
          ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 58,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Recommended',
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 48, bottom: 10),
                            child: Text('Cash'),
                          ),
                          Image.asset(
                            'assets/images/Banknotes.png',
                            height: 40,
                            width: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text('GHS 345'),
                ),
              ],
            ),
          ),
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
            color: Colors.white,
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
                  color: Colors.white,
                ),
              ),
              TextSpan(
                text: '-8765656565',
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  color: Colors.white,
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
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _subAmountInfo({required String subtotal, required String price}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$subtotal',
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            color: Colors.grey,
          ),
        ),
        Text(
          '$price',
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
