import 'package:get/get.dart';
import '../model/select_parcel_type_model.dart';

class SelectParcelTypeController extends GetxController{
  Rx<SelectParcelTypeModel> selectParcelTypeModel = SelectParcelTypeModel().obs;

  var isChecked = false.obs;
  void toggleCheckbox() {
    isChecked.value = !isChecked.value;
  }

}