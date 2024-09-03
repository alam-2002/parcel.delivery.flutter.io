import 'package:get/get.dart';

import '../model/select_vehicle_model.dart';

class SelectVehicleController extends GetxController{
  Rx<SelectVehicleModel> selectVehicleModel = SelectVehicleModel().obs;
}