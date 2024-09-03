import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import '../../../../utilities/constants/text_constants.dart';



class TrackDriverController extends GetxController {
  var currentLocation = LatLng(18.634244, 73.822846).obs;
  var targetLocation =
      LatLng(18.631015, 73.822568).obs; // Static location for target
  var polylineCoordinates = <LatLng>[].obs;
  BitmapDescriptor? userIcon;
  BitmapDescriptor? targetIcon;

  @override
  void onInit() {
    super.onInit();
    getCurrentLocation();
  }

  void loadCustomIcons() async {
    userIcon = await BitmapDescriptor.asset(
      ImageConfiguration(size: Size(48, 48)),
      'assets/icons/locationBlack.png',
    );

    targetIcon = await BitmapDescriptor.asset(
      ImageConfiguration(size: Size(48, 48)),
      'assets/icons/driverIcon.png',
    );

    update();
  }

  void getCurrentLocation() async {
    Location location = new Location();
    var locationData = await location.getLocation();
    currentLocation.value =
        LatLng(locationData.latitude!, locationData.longitude!);

    getPolyline();
  }

  void getPolyline() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      googleApiKey: myGoogleMapAPIkey,
      request: PolylineRequest(
        origin: PointLatLng(
            currentLocation.value.latitude, currentLocation.value.longitude),
        destination: PointLatLng(
            targetLocation.value.latitude, targetLocation.value.longitude),
        mode: TravelMode.driving,
      ),
    );

    if (result.points.isNotEmpty) {
      // polylineCoordinates.clear();
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }
  }
}