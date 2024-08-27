import 'package:get/get.dart';
import 'package:flutter/services.dart';

class CloseAppController extends GetxController {
  void closeApp() {
    SystemNavigator.pop();
  }
}
