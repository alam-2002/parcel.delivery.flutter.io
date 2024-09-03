import 'package:famani_parcel_delivery/common/custom_appbar.dart';
import 'package:famani_parcel_delivery/common/text_widget.dart';
import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:get/get.dart';
import '../../../common/rectangular_button.dart';
import '../../../common/user_input_text_field.dart';
import '../../../navigation/routes.dart';
import '../../../utilities/constants/images_constants.dart';
import '../../home/home_screen/view/home_screen.dart';
import '../controllers/date_controller.dart';

class UploadeIdenty extends StatelessWidget {

  final DateController dateController = Get.put(DateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: 'Upload picture of aadhaar card',
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 25),
                _uploadePhotoSection(),
                SizedBox(height: 50),
                UserInputTextField(
                  hintText: 'Enter your aadhaar card number',
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20),
                SelectDOB(),
                SizedBox(height: 50)
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
              Get.toNamed(Routes.homeScreen);
            },
            title: 'Submit',
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _uploadePhotoSection() {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      width: double.maxFinite,
      child: DottedBorder(
        color: ColorsClass.basicGrey,
        padding: const EdgeInsets.only(left: 6, right: 6, top: 6, bottom: 6),
        strokeWidth: 6,
        radius: Radius.circular(5),
        borderType: BorderType.RRect,
        dashPattern: [12, 10],
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Image.asset(
                  cameraPlusIcon,
                  height: 32,
                  width: 30,
                ),
              ),
              SizedBox(width: 12),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 2),
                  child: TextButton(
                    onPressed: (){},
                    child: Label(
                      label: 'Upload/Take Photo',
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: ColorsClass.basicGrey,
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

class SelectDOB extends StatelessWidget {
  final DateController dateController = Get.put(DateController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsClass.citrineWhite,
      margin: EdgeInsets.symmetric(horizontal: 18),
      child: Center(
        child: TextFormField(
          controller: dateController.dateController,
          decoration: InputDecoration(
            labelText: 'Select Date',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            suffixIcon: Icon(Icons.calendar_today),
          ),
          readOnly: true,
          onTap: () => dateController.pickDate(context),
        ),
      ),
    );
  }
}
