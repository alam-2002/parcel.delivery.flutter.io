import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationController extends GetxController {
  var currentLocation = LatLng(18.634244, 73.822846).obs;
  var selectedLocation = "".obs;

  void updateLocation(LatLng location) {
    currentLocation.value = location;
  }

  void setSelectedLocation(String location) {
    selectedLocation.value = location;
  }
}