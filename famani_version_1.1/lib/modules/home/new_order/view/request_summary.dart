import 'package:famani_parcel_delivery/common/custom_appbar.dart';
import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/package_details_bottomsheet.dart';
import '../../../../common/payment_details_bottomsheet.dart';
import '../../../../common/pickup_deliver_box.dart';
import '../../../../common/rectangular_button.dart';
import '../../../../common/text_widget.dart';
import '../../../../navigation/routes.dart';
import '../../../../utilities/constants/images_constants.dart';


class RequestSummaryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: 'Request Summary',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PickupDeliverBox(
              iconRequire: false,
              bgColor: ColorsClass.basicBlack,
              mainTextColor: ColorsClass.basicWhite,
              titleTextColor: ColorsClass.basicWhite,
            ),
            SizedBox(height: 20),
            _vehicleDetailsBox(),
            SizedBox(height: 15),
            CallPackageDetailsBottomsheet(),
            SizedBox(height: 10),
            CallPaymentDetailsBottomsheet(),
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
              Get.toNamed(Routes.bookingScreenMain);
            },
            title: 'Confirm',
          ),
          SizedBox(height: 20),
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
        color: ColorsClass.concreteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6),
            child: Label(
              label: 'Vehicle Details',
                fontWeight: FontWeight.w700,
                fontSize: 25,
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  alignment: Alignment.center,
                  twoWheeler,
                  height: 70,
                  width: 96,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 22, bottom: 20),
                  child: Label(
                    label: '2 Wheeler',
                      fontSize: 20,
                    ),
                ),
                SizedBox(width: 17.6),
                Padding(
                  padding: EdgeInsets.only(left: 0, bottom: 20),
                  child: Label(
                    label: 'GHS 6.90',
                      fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14),
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
        color: ColorsClass.citrineWhite,
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
              child: Label(
                label: 'Delivery fare',
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
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
                  child: Label(
                    label: 'Total Amount',
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Label(
                    label: 'GHS 345',
                      fontWeight: FontWeight.w700,
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
        color: ColorsClass.basicBlack,
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
                    child: Label(
                      label: 'No Coupon Applied',
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: ColorsClass.basicWhite,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.applyCoupons);
                    },
                    child: Label(
                      label: 'Apply Coupon',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: ColorsClass.basicWhite,
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
                Get.toNamed(Routes.applyCoupons);
              },
              icon: Icon(Icons.arrow_forward_ios),
              color: ColorsClass.basicWhite,
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
        color: ColorsClass.citrineWhite,
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
                            child: Label(label: 'Recommended'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 48, bottom: 10),
                            child: Label(label: 'Cash'),
                          ),
                          Image.asset(
                            bankNotes,
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
                  child: Label(label: 'GHS 345'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _subAmountInfo({required String subtotal, required String price}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Label(
          label: '$subtotal',
            color: ColorsClass.basicGrey,
          ),
        Label(
          label: '$price',
            fontWeight: FontWeight.w700,
        ),
      ],
    );
  }

}
