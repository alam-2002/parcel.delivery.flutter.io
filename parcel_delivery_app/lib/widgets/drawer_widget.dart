import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Screens/drawer_components/my_profile/my_profile.dart';
import '../Screens/drawer_components/notification/notification_screen.dart';
import '../Screens/drawer_components/raise_issue/raise_issue_screen.dart';
import 'controller/close_app_controller.dart';

class MyDrawerWidget extends StatelessWidget {
  final CloseAppController closeAppController = Get.put(CloseAppController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 326,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 38),
              decoration: BoxDecoration(
                color: Color(0xFFf2f2f2),
              ),
              width: double.maxFinite,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/profileImage.png',
                    height: 64,
                    width: 64,
                    alignment: Alignment.bottomCenter,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Maltida Brown',
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                        // SizedBox(height: 2),
                        Text(
                          'matildabrown@gmail.com',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: Colors.grey,
                          ),
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
                Get.to(MyProfileScreen());
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
                Get.to(RaiseIssueScreen());
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
                Get.to(NotificationScreen());
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
                Text(
                  boldText,
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 1),
                Text(
                  greyText,
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: Colors.grey.shade500,
                  ),
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
