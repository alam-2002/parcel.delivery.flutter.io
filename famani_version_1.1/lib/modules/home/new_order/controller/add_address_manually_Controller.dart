import '../model/add_address_manually_model.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AddAddressManuallyController extends GetxController{
  Rx<AddAddressManuallyModel> chooseLocationModel  = AddAddressManuallyModel().obs;

  TextEditingController userNameInputController             = TextEditingController();
  TextEditingController phoneNumberInputController          = TextEditingController();
  TextEditingController directionInputController            = TextEditingController();
  TextEditingController trademarkDescriptionInputController = TextEditingController();
}