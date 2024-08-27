import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import '../../widgets/common_widgets.dart';
import '../select_weight_of_parcel/select_parcel_weight.dart';

class CheckboxController extends GetxController {
  var isChecked = false.obs;

  void toggleCheckbox() {
    isChecked.value = !isChecked.value;
  }
}

class SelectParcel extends StatelessWidget {
  final CheckboxController checkboxController = Get.put(CheckboxController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select Parcel Type',
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
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
                Get.to(SelectParcelWeight());
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
          color: Color(0xFF000000),
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
                  child: Text(
                    'Electronics/Electrical',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFFFFFFFF),
                    ),
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
                      checkColor: Colors.green,
                      fillColor: WidgetStatePropertyAll<Color>(Colors.white),
                      side: BorderSide(
                        color: Colors.white,
                      ),
                      activeColor: Colors.black,
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
