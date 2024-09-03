import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:famani_parcel_delivery/common/text_widget.dart';
import '../../../../common/booking_details_container.dart';
import '../../../../common/bottom_navigation_bar.dart';
import '../../../../common/drawer_widget.dart';
import '../../../../common/drop_down_widget.dart';


class BookingScreenMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: ColorsClass.basicWhite,
        ),
        centerTitle: true,
        backgroundColor: ColorsClass.primaryRed,
        title: Label(
          label: 'Bookings',
          fontWeight: FontWeight.w700,
          fontSize: 25,
          color: ColorsClass.basicWhite,
        ),
      ),
      drawer: MyDrawerWidget(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _headerSection(),
              SizedBox(height: 10),
              BookingDetailsContainer(
                status: 'Complete',
              ),
              SizedBox(height: 10),
              BookingDetailsContainer(
                status: 'Pending',
              ),
              SizedBox(height: 10),
              BookingDetailsContainer(
                status: 'Pending',
              ),
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
        color: ColorsClass.primaryRed,
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

}


class PendingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Label(label: 'Pending Screen'),
      ),
      body: Center(
        child: Label(label: 'Pending Screen Content'),
      ),
    );
  }
}

class CompleteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Label(label: 'Complete Screen'),
      ),
      body: Center(
        child: Label(label: 'Complete Screen Content'),
      ),
    );
  }
}
