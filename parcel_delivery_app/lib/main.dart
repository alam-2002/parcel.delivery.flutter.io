import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parcel_delivery_app/splash_screen/splash_screen.dart';
import 'login_components/phone_login/phone_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => SplashScreen()),
        GetPage(name: '/phoneLogin', page: () => PhoneLoginScreen()),
      ],
    );
  }
}




