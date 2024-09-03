import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class DateController extends GetxController {
  var selectedDate = ''.obs;
  TextEditingController dateController = TextEditingController();

  void pickDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1960),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      selectedDate.value = DateFormat('yyyy-MM-dd').format(pickedDate);
      dateController.text = selectedDate.value;
    }
  }
}
