import 'package:famani_parcel_delivery/common/text_widget.dart';
import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CallPackageDetailsBottomsheet extends StatelessWidget {
  const CallPackageDetailsBottomsheet({super.key});
  void _redirectPackageDetails() {
    Get.bottomSheet(
      backgroundColor: Colors.white,
      PackageDetailsBottomsheet(),
      isScrollControlled: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: _redirectPackageDetails, child: PackageDetailsBox());
  }
}

class PackageDetailsBottomsheet extends StatelessWidget {
  const PackageDetailsBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
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
                color: ColorsClass.altoColor,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            SizedBox(height: 24),
            Align(
              alignment: Alignment.center,
              child: Label(
                label: 'Package Details',
                fontWeight: FontWeight.w700,
                fontSize: 25,
                color: ColorsClass.basicBlack,
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
                  PacakageDetailContainer(),
                  SizedBox(height: 10),
                  PacakageDetailContainer(),
                  SizedBox(height: 10),
                  PacakageDetailContainer(),
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
}

class PacakageDetailContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.only(left: 50, top: 15, right: 10),
      width: double.maxFinite,
      height: 100,
      decoration: BoxDecoration(
        color: ColorsClass.citrineWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Label(
            label: 'Small ( Electronics )',
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
          Label(
            label: '120-139 lbs.',
            fontWeight: FontWeight.w700,
            color: ColorsClass.basicGrey,
          ),
          Label(
            label: 'required a 2 wheeler',
            fontWeight: FontWeight.w700,
            color: ColorsClass.basicGrey,
          ),
        ],
      ),
    );
  }
}

class PackageDetailsBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: ColorsClass.concreteColor,
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
                  Label(
                    label: 'Pacakage Details',
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
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
}
