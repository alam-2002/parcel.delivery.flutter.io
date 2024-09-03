import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/instruction_for_delivery.dart';
import '../../../../common/pick_from_deliver_to.dart';
import '../../../../common/rectangular_button.dart';
import 'package:famani_parcel_delivery/common/custom_appbar.dart';
import '../../../../common/text_widget.dart';
import '../../../../navigation/routes.dart';
import '../../../../theme/colors_class.dart';


class NewRequestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: 'New Request',
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Material(
                elevation: 3,
                borderRadius: BorderRadius.circular(12.0),
                shadowColor: ColorsClass.basicBlack,
                child: PickupDeliver(needText: false),
              ),
              SizedBox(height: 20),
              InstructionRow(
                onTap: (){
                  _showBottomSheet();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showBottomSheet() {
    Get.bottomSheet(
      backgroundColor: ColorsClass.basicWhite,
      _bottomSheetMain(),
      isScrollControlled: true,
    );
  }

  Widget _bottomSheetMain() {
    return Container(
      height: 400,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 20),
      child: Column(
        children: [
          Container(
            height: 10,
            width: 122,
            decoration: BoxDecoration(
              color: ColorsClass.basicBlueGrey,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          SizedBox(height: 24),
          Align(
            alignment: Alignment.center,
            child: Label(
              label: 'Instruction for the Parcel',
                fontWeight: FontWeight.w700,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 25),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 14),
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _userInstructionInput(),
                SizedBox(height: 4),
              ],
            ),
          ),
          SizedBox(height: 20),
          RectangularButton(
            onPressed: () {
              Get.toNamed(Routes.selectVehicleScreen);
            },
            title: 'Continue',
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _userInstructionInput() {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
        child: TextFormField(
          maxLines: 3,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ColorsClass.basicBlack
          ),
          cursorColor: ColorsClass.basicGrey,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorsClass.basicGrey, width: 2.0),
              borderRadius: BorderRadius.circular(5),
            ),
            hintText:
            'The parcel will buy out the goods, receive cash or carry out other instructions.',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: ColorsClass.basicGrey,
              ),
            ),
          ),
        ),
      ),
    );
  }

}





