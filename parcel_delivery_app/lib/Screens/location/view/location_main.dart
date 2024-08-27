import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:parcel_delivery_app/Screens/location/view/select_location.dart';
import '../../../widgets/common_widgets.dart';
import '../controller/location_controller.dart';
import 'add_address.dart';

class LocationMain extends StatelessWidget {
  final LocationController locationController = Get.put(LocationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Address',
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            fontWeight: FontWeight.w700,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
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
                  Get.to(SelectLocation());
                },
                child: Text(
                  'Selected Location: ${locationController.selectedLocation.value}',
                ),
              ),
            );
          }),
          RectangularButton(
            onPressed: () {
              Get.to(AddAddressManually());
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
