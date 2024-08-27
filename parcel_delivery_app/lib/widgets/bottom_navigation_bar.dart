import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Screens/booking_screen_main/booking_screen_main.dart';
import '../Screens/drawer_components/my_profile/my_profile.dart';
import '../Screens/drawer_components/notification/notification_screen.dart';
import '../Screens/home_screen.dart';

class MyNavigationBar extends StatelessWidget {
  NavigationController navigationController = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Obx(
        () => BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: false,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFFbf1e2e),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            navigationController.changeIndex(index);
          },
          currentIndex: navigationController.selectedIndex.value,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/newRequest.png')),
              label: 'New Request',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/booking.png')),
              label: 'Bookings',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/bell.png')),
              label: 'Notificatins',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/profile.png')),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;

    if (selectedIndex == 0) {
      Get.to(HomeScreen());
    } else if (selectedIndex == 1) {
      Get.to(BookingScreenMain());
    } else if (selectedIndex == 2) {
      Get.to(NotificationScreen());
    } else if (selectedIndex == 3) {
      Get.to(MyProfileScreen());
    } else if (selectedIndex == 4) {
      // Get.to(HomeScreen());
    }
  }
}
