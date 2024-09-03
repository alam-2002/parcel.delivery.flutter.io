import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/home_model.dart';

class HomeController extends GetxController{
  Rx<HomeModel> homeModelObj = HomeModel().obs;
}