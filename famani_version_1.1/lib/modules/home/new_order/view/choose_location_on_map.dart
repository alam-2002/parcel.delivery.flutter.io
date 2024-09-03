import 'package:famani_parcel_delivery/common/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import '../../../../common/custom_appbar.dart';
import '../../../../common/rectangular_button.dart';
import '../../../../navigation/routes.dart';
import '../controller/choose_location_controller.dart';


class ChooseLocationOnMap extends StatelessWidget {
  final ChooseLocationController locationController = Get.put(ChooseLocationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Add Address',
        appBar: AppBar(),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search location...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                // Implement location search logic
              },
            ),
          ),
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
              child: TextButton(
                onPressed: () {
                  Get.toNamed(Routes.selectLocationScreen);
                },
                child: Label(
                  label: 'Select Location: ${locationController.selectedLocation.value}',
                ),
              ),
            );
          }),
          RectangularButton(
            onPressed: () {
              Get.toNamed(Routes.addAddressManuallyScreen);
            },
            title: 'Confirm Location',
          ),
          SizedBox(height: 20),
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
