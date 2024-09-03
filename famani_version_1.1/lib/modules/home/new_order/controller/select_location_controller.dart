import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../model/select_location_model.dart';

class SelectLocationController extends GetxController{
  Rx<SelectLocationModel> selectLocationModel = SelectLocationModel().obs;
  TextEditingController searchLocation = TextEditingController();
}