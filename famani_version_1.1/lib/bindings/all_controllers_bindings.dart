import 'package:famani_parcel_delivery/modules/home/new_order/controller/choose_location_controller.dart';
import 'package:famani_parcel_delivery/modules/home/home_screen/controllers/home_controller.dart';
import 'package:get/get.dart';
import '../modules/home/new_order/controller/add_address_manually_Controller.dart';
import '../modules/home/new_order/controller/new_request_controller.dart';
import '../modules/home/new_order/controller/request_summary_controller.dart';
import '../modules/home/new_order/controller/select_location_controller.dart';
import '../modules/home/new_order/controller/select_parcel_type_controller.dart';
import '../modules/home/new_order/controller/select_vehicle_controller.dart';
import '../modules/home/orders/controller/booking_screen_controller.dart';
import '../modules/home/orders/controller/track_driver_controller.dart';


class AllControllerBindings implements Bindings {
  @override
  void dependencies() {

    Get.lazyPut( () => HomeController());

    Get.lazyPut( () => ChooseLocationController());

    Get.lazyPut( () => SelectLocationController());

    Get.lazyPut( () => AddAddressManuallyController());

    Get.lazyPut( () => NewRequestController());

    Get.lazyPut( () => SelectVehicleController());

    Get.lazyPut( () => SelectParcelTypeController());

    Get.lazyPut( () => RequestSummaryController());

    Get.lazyPut( () => BookingScreenController());

    Get.lazyPut( () => TrackDriverController());

  }
}
