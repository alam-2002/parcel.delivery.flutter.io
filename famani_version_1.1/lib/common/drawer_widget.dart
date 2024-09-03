import 'package:famani_parcel_delivery/common/text_widget.dart';
import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../modules/home/profile/controller/close_app_controller.dart';
import '../navigation/routes.dart';
import '../utilities/constants/images_constants.dart';


class MyDrawerWidget extends StatelessWidget {
  final CloseAppController closeAppController = Get.put(CloseAppController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 326,
        decoration: BoxDecoration(
          color: ColorsClass.basicWhite,
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 38),
              decoration: BoxDecoration(
                color: ColorsClass.concreteColor,
              ),
              width: double.maxFinite,
              child: Row(
                children: [
                  Image.asset(
                    profileImage,
                    height: 64,
                    width: 64,
                    alignment: Alignment.bottomCenter,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Label(label:
                          'Maltida Brown',
                          overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                        ),
                        Label(
                          label: 'matildabrown@gmail.com',
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: ColorsClass.basicGrey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.profileScreen);
                print('Profile Screen');
              },
              child: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 14, right: 24),
                child: _drawerSection(
                    boldText: 'Personal Details',
                    greyText: 'Already have 12 orders'),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                print('About Us');
              },
              child: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 14, right: 24),
                child: _drawerSection(
                    boldText: 'About Us',
                    greyText: 'Lorem Ipsum is simply dummy text'),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.raiseIssueScreen);
                print('Support');
              },
              child: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 16, right: 22),
                child: _drawerSection(
                    boldText: 'Support',
                    greyText: 'Lorem Ipsum is simply dummy text'),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.notificationScreen);
                print('Notification');
              },
              child: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 16, right: 22),
                child: _drawerSection(
                    boldText: 'Notification',
                    greyText: 'Lorem Ipsum is simply dummy text'),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                closeAppController.closeApp();
              },
              child: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 16, right: 22),
                child: _drawerSection(
                    boldText: 'Logout',
                    greyText: 'Lorem Ipsum is simply dummy text'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawerSection({required String boldText, required String greyText}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Label(label:
                  boldText,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                ),
                SizedBox(height: 1),
                Label(label:
                  greyText,
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: Colors.grey.shade500,
                ),
              ],
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_forward_ios,
            size: 24,
          ),
        ),
      ],
    );
  }
}
