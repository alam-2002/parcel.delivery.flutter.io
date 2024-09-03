import 'package:famani_parcel_delivery/common/custom_appbar.dart';
import 'package:famani_parcel_delivery/common/text_widget.dart';
import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dotted_border/dotted_border.dart';
import '../../../../navigation/routes.dart';

class ApplyCoupons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: 'Apply Coupons',
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
    return InkWell(
      onTap: (){
        Get.offNamed(Routes.requestSummaryScreen);
      },
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: ColorsClass.citrineWhite,
          boxShadow: [
            BoxShadow(
              color: ColorsClass.basicBlack,
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
                    color: ColorsClass.basicBlack,
                    padding:
                    EdgeInsets.only(left: 1, top: 1, right: 1, bottom: 1),
                    strokeWidth: 1,
                    dashPattern: [3, 3],
                    child: Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                      decoration: BoxDecoration(
                        color: ColorsClass.basicWhite,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Label(
                            label: 'TRYNEW',
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: TextButton(
                        onPressed: (){
                          Get.offNamed(Routes.requestSummaryScreen);
                        },
                        child: Label(
                          label: 'Apply',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
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
              child: Label(
                label: 'Get 30% off',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
              ),
            ),
            SizedBox(height: 6),
            Padding(
              padding: EdgeInsets.only(left: 6),
              child: Label(
                label: 'Use code TRYNEW & get 30% off on orders above AED 20.00. Maximum discount:AED 2.00',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
