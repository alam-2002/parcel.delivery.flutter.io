import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../../../widgets/common_widgets.dart';
import '../report_issue/report_issue_screen.dart';

class RaiseIssueScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Raise issue',
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            fontWeight: FontWeight.w700,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Please let us know',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'How we can serve you better?',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black,
                    ),
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
              Get.to(ReportIssueScreen());
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
      // padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFfbf6e2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextFormField(
          maxLines: 10,
          style: TextStyle(
            color: Colors.black,
          ),
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.circular(5),
            ),
            // prefixIcon: Icon(Icons.search, color: Colors.grey),
            hintText: 'Type message',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Colors.black,
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
        color: Color(0xFFfbf6e2),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Obx(
        () => DropdownButton<String>(
          value: _dropdownController.selectedValue.value,
          onChanged: (newValue) {
            _dropdownController.updateSelectedValue(newValue!);
            if (newValue == 'Payment issue') {
              // Get.toNamed('/pending');
            } else if (newValue == 'Booking issue') {
              // Get.toNamed('/complete');
            }
          },
          icon: Icon(Icons.keyboard_arrow_down),
          iconSize: 30,
          hint: Text('Select issue'),
          isExpanded: true,
          underline: SizedBox(),
          items: [
            DropdownMenuItem(
              value: 'Driver issue',
              child: Text(
                'Driver issue',
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            DropdownMenuItem(
              value: 'Payment issue',
              child: Text(
                'Payment issue',
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            DropdownMenuItem(
              value: 'Booking issue',
              child: Text(
                'Booking issue',
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.black,
                ),
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
