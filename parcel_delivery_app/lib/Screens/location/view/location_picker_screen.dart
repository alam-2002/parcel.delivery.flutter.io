import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:parcel_delivery_app/Screens/location/view/search_location_widget.dart';
import 'package:get/get.dart';
import '../../../widgets/common_widgets.dart';
import '../controller/location_controller.dart';


class LocationPickerScreen extends StatelessWidget {
  final LocationController locationController = Get.put(LocationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Picker'),
      ),
      body: Column(
        children: [
          SearchLocationWidget(),
          Expanded(
            child: Obx(() {
              return GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: locationController.currentLocation.value,
                  zoom: 14.0,
                ),
                onMapCreated: (GoogleMapController controller) {
                  _determinePosition().then((position) {
                    locationController.updateLocation(
                      LatLng(position.latitude, position.longitude),
                    );
                  });
                },
                onTap: (LatLng location) {
                  locationController.updateLocation(location);
                },
                myLocationEnabled: true,
              );
            }),
          ),
          Obx(() {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Selected Location: ${locationController.selectedLocation.value}',
              ),
            );
          }),
          RectangularButton(
            onPressed: (){},
            title: 'Confirm Location',
          ),
        ],
      ),
    );
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }
}
