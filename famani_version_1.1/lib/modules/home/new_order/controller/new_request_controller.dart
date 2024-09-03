import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/new_request_model.dart';

class NewRequestController extends GetxController {
  Rx<NewRequestModel> requestModelObj = NewRequestModel().obs;
}