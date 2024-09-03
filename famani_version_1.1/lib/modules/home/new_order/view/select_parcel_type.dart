import 'package:famani_parcel_delivery/common/custom_appbar.dart';
import 'package:famani_parcel_delivery/common/text_widget.dart';
import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/rectangular_button.dart';
import '../../../../navigation/routes.dart';
import '../controller/select_parcel_type_controller.dart';


class SelectParcelType extends StatelessWidget {
  final SelectParcelTypeController checkboxController = Get.put(SelectParcelTypeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: 'Select Parcel Type',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _parcelList(),
            SizedBox(height: 10),
            _parcelList(),
            SizedBox(height: 10),
            _parcelList(),
            SizedBox(height: 10),
            _parcelList(),
            SizedBox(height: 10),
            _parcelList(),
            SizedBox(height: 10),
            _parcelList(),
            SizedBox(height: 10),
            _parcelList(),
            SizedBox(height: 10),
            _parcelList(),
            SizedBox(height: 10),
            _parcelList(),
            SizedBox(height: 25),
            RectangularButton(
              onPressed: () {
                Get.toNamed(Routes.selectParcelWeight);
              },
              title: 'Proceed',
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _parcelList() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 9),
      child: Container(
        decoration: BoxDecoration(
          color: ColorsClass.basicBlack,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 9.5, 0),
                child: SizedBox(
                  width: 287,
                  child: Label(
                    label: 'Electronics/Electrical',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: ColorsClass.basicWhite,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 2, bottom: 3),
                child: SizedBox(
                  width: 14,
                  height: 14,
                  child: Obx(
                        () => Checkbox(
                      value: checkboxController.isChecked.value,
                      onChanged: (bool? newValue) {
                        checkboxController.toggleCheckbox();
                      },
                      autofocus: false,
                      checkColor: ColorsClass.basicGreen,
                      fillColor: WidgetStatePropertyAll<Color>(ColorsClass.basicWhite),
                      side: BorderSide(
                        color: ColorsClass.basicWhite,
                      ),
                      activeColor: ColorsClass.basicBlack,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
