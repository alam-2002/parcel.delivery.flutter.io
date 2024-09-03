import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/bottom_navigation_bar.dart';
import '../../../../common/carousel_slider.dart';
import '../../../../common/drawer_widget.dart';
import '../../../../common/instruction_for_delivery.dart';
import '../../../../common/pick_from_deliver_to.dart';
import '../../../../common/rectangular_button.dart';
import '../../../../common/text_widget.dart';
import '../../../../navigation/routes.dart';
import '../../../../theme/colors_class.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: ColorsClass.basicBlack,
        ),
        centerTitle: true,
        backgroundColor: ColorsClass.basicWhite,
        title: Label(
          label: 'New Request',
          fontWeight: FontWeight.w700,
          fontSize: 25,
          color: ColorsClass.basicBlack,
        ),
      ),
      drawer: MyDrawerWidget(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 5),
              TestingCarousel(),
              SizedBox(height: 15),
              PickupDeliver(
                needText: true,
              ),
              SizedBox(height: 1),
              InstructionRow(
                onTap: (){
                  Get.toNamed(Routes.newRequestScreen);
                },
              ),
              SizedBox(height: 1),
              RectangularButton(
                onPressed: () {
                  Get.toNamed(Routes.addAddressOnMap);
                },
                title: 'Continue',
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyNavigationBar(),
    );
  }
}