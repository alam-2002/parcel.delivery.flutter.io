import 'package:famani_parcel_delivery/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../theme/colors_class.dart';
import '../utilities/constants/images_constants.dart';


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
          backgroundColor: ColorsClass.primaryRed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            navigationController.changeIndex(index);
          },
          currentIndex: navigationController.selectedIndex.value,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(newRequestIcon)),
              label: 'New Request',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(bookingIcon)),
              label: 'Bookings',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(notificationIcon)),
              label: 'Notificatins',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(profileIcon)),
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
      Get.toNamed(Routes.homeScreen);
    } else if (selectedIndex == 1) {
      Get.toNamed(Routes.bookingScreenMain);
    } else if (selectedIndex == 2) {
      Get.toNamed(Routes.notificationScreen);
    } else if (selectedIndex == 3) {
      Get.toNamed(Routes.profileScreen);
    } else if (selectedIndex == 4) {
      // Get.to(HomeScreen());
    }
  }
}
