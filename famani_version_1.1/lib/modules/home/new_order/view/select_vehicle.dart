import 'package:famani_parcel_delivery/common/custom_appbar.dart';
import 'package:famani_parcel_delivery/common/text_widget.dart';
import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/pickup_deliver_box.dart';
import '../../../../common/rectangular_button.dart';
import '../../../../navigation/routes.dart';
import '../../../../utilities/constants/images_constants.dart';


class SelectVehicle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: 'Select Vehicle',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PickupDeliverBox(
              bgColor: ColorsClass.basicWhite,
              titleTextColor: ColorsClass.basicGrey,
              mainTextColor: ColorsClass.basicBlack,
              iconRequire: true,
            ),
            SizedBox(height: 10),
            _selectVehicleSection(),
            SizedBox(height: 10),
            RectangularButton(
              onPressed: (){
                Get.toNamed(Routes.selectParcelType);
              },
              title: 'Proceed with 2 Wheeler',
            ),
            SizedBox(height: 20),
          ],
        ),
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
                  Size(200, 70)),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Image.asset(twoWheeler),
                SizedBox(width: 20),
                Label(
                  label: '2 Wheeler',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
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
              minimumSize: WidgetStateProperty.all<Size>(Size(200, 70)),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Image.asset(fourWheeler),
                SizedBox(width: 20),
                Label(
                  label: '4 Wheeler',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(ColorsClass.basicWhite),
              foregroundColor: WidgetStateProperty.all<Color>(ColorsClass.basicBlack),
              minimumSize: WidgetStateProperty.all<Size>(Size(200, 70)),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Image.asset(pickup8ft),
                SizedBox(width: 20),
                Label(
                  label: 'Pickup 8ft',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(ColorsClass.basicWhite),
              foregroundColor: WidgetStateProperty.all<Color>(ColorsClass.basicBlack),
              minimumSize: WidgetStateProperty.all<Size>(Size(200, 70)),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Image.asset(fourWheeler),
                SizedBox(width: 20),
                Label(
                  label: '4 Wheeler',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
