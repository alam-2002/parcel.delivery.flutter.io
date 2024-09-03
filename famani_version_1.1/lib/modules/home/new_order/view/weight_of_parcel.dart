import 'package:famani_parcel_delivery/common/custom_appbar.dart';
import 'package:famani_parcel_delivery/common/text_widget.dart';
import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/rectangular_button.dart';
import '../../../../navigation/routes.dart';

class SelectParcelWeight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: 'Select Weight of Parcel',
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
              Get.toNamed(Routes.requestSummaryScreen);
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
              backgroundColor: WidgetStateProperty.all<Color>(ColorsClass.basicWhite),
              foregroundColor: WidgetStateProperty.all<Color>(ColorsClass.basicBlack),
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
                Label(
                  label: 'Weight',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                Label(
                  label: '120-130 lbs.',
                  fontWeight: FontWeight.w700,
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
                      return ColorsClass.basicWhite;
                    }
                    return ColorsClass.basicBlack;
                  }),
              foregroundColor: WidgetStateProperty.resolveWith<Color>(
                      (Set<WidgetState> states) {
                    if (states.contains(WidgetState.pressed)) {
                      return ColorsClass.basicBlack;
                    }
                    return ColorsClass.basicWhite;
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
                Label(
                  label: 'Weight',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  color: ColorsClass.basicWhite,
                ),
                Label(
                  label: '120-130 lbs.',
                    fontWeight: FontWeight.w700,
                  color: ColorsClass.basicWhite,
                  ),
              ],
            ),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(ColorsClass.basicWhite),
              foregroundColor: WidgetStateProperty.all<Color>(ColorsClass.basicBlack),
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
                Label(
                  label: 'Weight',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                ),
                Label(
                  label: '120-130 lbs.',
                    fontWeight: FontWeight.w700,
                  ),
              ],
            ),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(ColorsClass.basicWhite),
              foregroundColor: WidgetStateProperty.all<Color>(ColorsClass.basicBlack),
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
                Label(
                  label: 'Weight',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                ),
                Label(
                  label: '120-130 lbs.',
                    fontWeight: FontWeight.w700,
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
