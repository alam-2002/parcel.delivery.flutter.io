import 'package:famani_parcel_delivery/common/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../theme/colors_class.dart';

class DropdownWidget extends StatelessWidget {
  final _dropdownController = DropdownController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: ColorsClass.basicWhite,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Obx(
            () => DropdownButton<String>(
          value: _dropdownController.selectedValue.value,
          onChanged: (newValue) {
            _dropdownController.updateSelectedValue(newValue!);
            if (newValue == 'Pending') {
              // Get.toNamed('/pending');
            } else if (newValue == 'Complete') {
              // Get.toNamed('/complete');
            }
          },
          icon: Icon(Icons.keyboard_arrow_down),
          iconSize: 30,
          isExpanded: true,
          underline: SizedBox(),
          items: [
            DropdownMenuItem(
              value: 'All',
              child: Label(
                label: 'All',
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: ColorsClass.basicBlack,
              ),
            ),
            DropdownMenuItem(
              value: 'Ongoing',
              child: Label(
                label: 'Ongoing',
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: ColorsClass.basicBlack,
              ),
            ),
            DropdownMenuItem(
              value: 'Complete',
              child: Label(
                label: 'Complete',
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: ColorsClass.basicBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DropdownController extends GetxController {
  var selectedValue = 'All'.obs;

  void updateSelectedValue(String newValue) {
    selectedValue.value = newValue;
  }
}