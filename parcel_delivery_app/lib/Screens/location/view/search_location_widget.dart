import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_places_flutter/google_places_flutter.dart';
import 'package:get/get.dart';
import '../controller/location_controller.dart';
import 'package:parcel_delivery_app/constants/constants.dart';

class SearchLocationWidget extends StatelessWidget {
  final LocationController locationController = Get.put(LocationController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GooglePlaceAutoCompleteTextField(
        textEditingController: TextEditingController(),
        googleAPIKey: myGoogleMapAPIkey,
        inputDecoration: InputDecoration(
          hintText: 'Search location...',
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(),
        ),
        countries: ['us'],
        isLatLngRequired: true,
        getPlaceDetailWithLatLng: (prediction) {
          locationController.updateLocation(
            LatLng(
              double.parse(prediction.lat!),
              double.parse(prediction.lng!),
            ),
          );
          locationController.setSelectedLocation(prediction.description!);
        },
        itemClick: (prediction) {
          locationController.updateLocation(
            LatLng(
              double.parse(prediction.lat!),
              double.parse(prediction.lng!),
            ),
          );
          locationController.setSelectedLocation(prediction.description!);
        },
      ),
    );
  }
}
