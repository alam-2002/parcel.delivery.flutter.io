import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import '../../widgets/bottom_navigation_bar.dart';
import '../../widgets/drawer_widget.dart';
import '../booking_details/booking_details_screen.dart';

class BookingScreenMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFbf1e2e),
        title: Text(
          'Bookings',
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            fontWeight: FontWeight.w700,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      drawer: MyDrawerWidget(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _headerSection(),
              SizedBox(height: 10),
              _bookingDetailBox(status: 'Complete'),
              SizedBox(height: 10),
              _bookingDetailBox(status: 'Complete'),
              SizedBox(height: 10),
              _bookingDetailBox(status: 'Complete'),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyNavigationBar(),
    );
  }

  Widget _headerSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        color: Color(0xFFbf1e2e),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: DropdownWidget(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _bookingDetailBox({
    required String status,
  }) {
    return InkWell(
      onTap: (){
        Get.to(BookingDetails());
      },
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
        decoration: BoxDecoration(
          color: Color(0xFFf2f2f2),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Booking ID:gsdwe354756',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '$status',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Colors.lightGreen,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2),
                  child: Text(
                    'Jan 10, 2022 3:14 PM',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            SizedBox(
              width: double.maxFinite,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            'assets/icons/filledCircleGreen.png',
                            height: 14,
                            width: double.maxFinite,
                          ),
                          SizedBox(height: 2),
                          Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: SizedBox(
                              height: 40,
                              child: VerticalDivider(
                                width: 1,
                                thickness: 2,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 0),
              width: double.maxFinite,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.location_on, color: Colors.red),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
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
        color: Colors.white,
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
              child: Text(
                'All',
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            DropdownMenuItem(
              value: 'Ongoing',
              child: Text(
                'Ongoing',
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            DropdownMenuItem(
              value: 'Complete',
              child: Text(
                'Complete',
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
  var selectedValue = 'All'.obs;

  void updateSelectedValue(String newValue) {
    selectedValue.value = newValue;
  }
}

class PendingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pending Screen'),
      ),
      body: Center(
        child: Text('Pending Screen Content'),
      ),
    );
  }
}

class CompleteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complete Screen'),
      ),
      body: Center(
        child: Text('Complete Screen Content'),
      ),
    );
  }
}
