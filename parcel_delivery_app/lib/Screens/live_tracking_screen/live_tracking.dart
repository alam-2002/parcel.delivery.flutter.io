import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:location/location.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import '../../constants/constants.dart';
import '../booking_details/booking_details_screen.dart';
import '../booking_screen_main/booking_screen_main.dart';

class LiveTrackingScreen extends StatelessWidget {
  final LivrTrackingLocationController locationController =
      Get.put(LivrTrackingLocationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Live Tracking',
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            fontWeight: FontWeight.w700,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: [
          Obx(() {
            return GoogleMap(
              initialCameraPosition: CameraPosition(
                target: locationController.currentLocation.value,
                zoom: 14.0,
              ),
              markers: {
                Marker(
                  markerId: MarkerId('currentLocation'),
                  position: locationController.currentLocation.value,
                  icon: BitmapDescriptor.defaultMarker,
                ),
                Marker(
                  markerId: MarkerId('targetLocation'),
                  position: locationController.targetLocation.value,
                  icon: BitmapDescriptor.defaultMarker,
                ),
              },
              polylines: {
                const Polyline(
                  polylineId: PolylineId('route'),
                  // points: locationController.polylineCoordinates,
                  points: <LatLng>[
                    LatLng(18.634244, 73.822846),
                    LatLng(18.631015, 73.822568),
                  ],
                  color: Colors.black,
                  width: 5,
                ),
              },
            );
          }),
          DraggableScrollableSheet(
            initialChildSize: 0.3,
            minChildSize: 0.3,
            maxChildSize: 0.8,
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 8,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Color(0xFFdadada),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ],
                        ),
                        _driverDetails(),
                        SizedBox(height: 16),
                        SizedBox(
                          width: double.maxFinite,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              Get.off(BookingScreenMain());
                            },
                            icon: Icon(
                              Icons.call,
                              color: Colors.white,
                            ),
                            label: Text(
                              'Call Driver',
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFbf1e2e),
                              padding: EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Track Your Order',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text('Order Status'),
                        SizedBox(height: 8),
                        OrderStatusWidget(
                          imageLocation: 'assets/images/pickupParcel.png',
                          title: 'Picked up Parcel',
                          time: '12:30 AM',
                          description: '',
                          bgColor: Color(0xFFbf1e2e),
                        ),
                        OrderStatusWidget(
                          imageLocation: 'assets/images/deliverParcel.png',
                          title: 'Started delivery of the parcel',
                          time: '',
                          description: 'Your order has been confirmed.',
                          bgColor: Color(0xFFbf1e2e),
                        ),
                        OrderStatusWidget(
                          imageLocation: 'assets/images/dropoffParcel.png',
                          title: 'Reached Drop location',
                          time: '',
                          description:
                              'Your order will be delivered at 01:30 AM.',
                          bgColor: Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _driverDetails() {
    final RatingController ratingController = Get.put(RatingController());
    return Container(
      width: double.maxFinite,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/driverImage.png',
                  height: 72,
                  width: 72,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Desmond Miles',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            children: [
                              Obx(
                                () => RatingBar.builder(
                                  initialRating: ratingController.rating.value,
                                  minRating: 1,
                                  maxRating: 5,
                                  itemSize: 26,
                                  allowHalfRating: false,
                                  itemCount: 5,
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    ratingController.rating.value = rating;
                                  },
                                ),
                              ),
                              SizedBox(width: 5),
                              Obx(
                                () => Text(
                                  '${ratingController.rating.value}',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '50+ orders completed',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class OrderStatusWidget extends StatelessWidget {
  final String imageLocation;
  final String title;
  final String time;
  final String description;
  final Color bgColor;

  const OrderStatusWidget({
    Key? key,
    required this.imageLocation,
    required this.title,
    required this.time,
    required this.description,
    required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 75,
            width: 75,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: bgColor,
              ),
              child: Image.asset(
                '$imageLocation',
              ),
            ),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              if (time.isNotEmpty)
                Text(
                  time,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              if (description.isNotEmpty)
                SizedBox(
                  width: 190,
                  child: Text(
                    description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class LivrTrackingLocationController extends GetxController {
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
