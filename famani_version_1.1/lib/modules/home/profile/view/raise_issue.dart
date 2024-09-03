import 'package:famani_parcel_delivery/common/custom_appbar.dart';
import 'package:famani_parcel_delivery/common/text_widget.dart';
import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/rectangular_button.dart';
import '../../../../navigation/routes.dart';

class RaiseIssueScreen extends StatelessWidget {
  const RaiseIssueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: 'Raise issue',
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Label(
                    label: 'Please let us know',
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 4),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Label(
                    label: 'How we can serve you better?',
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  child: DropdownWidget(),
                ),
                SizedBox(height: 10),
                _userInstructionInput(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RectangularButton(
            onPressed: () {
              Get.toNamed(Routes.reportIssueScreen);
            },
            title: 'Submit',
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _userInstructionInput() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          color: ColorsClass.citrineWhite,
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextFormField(
          maxLines: 10,
          style: TextStyle(
            color: ColorsClass.basicBlack,
          ),
          cursorColor: ColorsClass.basicGrey,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorsClass.basicGrey, width: 2.0),
              borderRadius: BorderRadius.circular(5),
            ),
            hintText: 'Type message',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: ColorsClass.basicBlack,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DropdownWidget extends StatelessWidget {
  final _dropdownController = DropdownController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: ColorsClass.citrineWhite,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Obx(
        () => DropdownButton<String>(
          value: _dropdownController.selectedValue.value,
          onChanged: (newValue) {
            _dropdownController.updateSelectedValue(newValue!);
            if (newValue == 'Payment issue') {

            } else if (newValue == 'Booking issue') {

            }
            else if (newValue == 'Personal issue') {

            }
          },
          icon: Icon(Icons.keyboard_arrow_down),
          iconSize: 30,
          hint: Label(label: 'Select issue'),
          isExpanded: true,
          underline: SizedBox(),
          items: [
            DropdownMenuItem(
              value: 'Driver issue',
              child: Label(
                label: 'Driver issue',
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            DropdownMenuItem(
              value: 'Payment issue',
              child: Label(
                label: 'Payment issue',
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            DropdownMenuItem(
              value: 'Booking issue',
              child: Label(
                label: 'Booking issue',
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            DropdownMenuItem(
              value: 'Personal issue',
              child: Label(
                label: 'Personal issue',
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DropdownController extends GetxController {
  var selectedValue = 'Driver issue'.obs;

  void updateSelectedValue(String newValue) {
    selectedValue.value = newValue;
  }
}
