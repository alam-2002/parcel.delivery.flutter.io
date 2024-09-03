import 'package:famani_parcel_delivery/common/text_widget.dart';
import 'package:famani_parcel_delivery/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utilities/constants/images_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    Get.offNamed(Routes.phoneLoginScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(appLogo),
              const SizedBox(height: 10),
              Label(
                label: 'Parcel Delivery Services',
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
