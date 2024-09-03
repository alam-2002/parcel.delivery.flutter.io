import 'package:famani_parcel_delivery/common/custom_appbar.dart';
import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../common/text_widget.dart';
import '../../../../navigation/routes.dart';
import '../../../../utilities/constants/images_constants.dart';
import '../controller/rating_bar_controller.dart';
import '../controller/track_driver_controller.dart';


class TrackDriverScreen extends StatelessWidget {
  final TrackDriverController locationController = Get.put(TrackDriverController());

  TrackDriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: 'Live Tracking',
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
                  points: <LatLng>[
                    LatLng(18.634244, 73.822846),
                    LatLng(18.631015, 73.822568),
                  ],
                  color: ColorsClass.basicBlack,
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
                  color: ColorsClass.basicWhite,
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
                                color: ColorsClass.altoColor,
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
                              Get.offNamed(Routes.bookingScreenMain);
                            },
                            icon: const Icon(
                              Icons.call,
                              color: ColorsClass.basicWhite,
                            ),
                            label: Label(
                              label: 'Call Driver',
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: ColorsClass.basicWhite,
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorsClass.primaryRed,
                              padding: EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Label(
                          label: 'Track Your Order',
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        const SizedBox(height: 8),
                        Label(label: 'Order Status'),
                        const SizedBox(height: 8),
                        const OrderStatusWidget(
                          imageLocation: pickupParcelIcon,
                          title: 'Picked up Parcel',
                          time: '12:30 AM',
                          description: '',
                          bgColor: ColorsClass.primaryRed,
                        ),
                        const OrderStatusWidget(
                          imageLocation: deliverParcelIcon,
                          title: 'Started delivery of the parcel',
                          time: '',
                          description: 'Your order has been confirmed.',
                          bgColor: ColorsClass.primaryRed,
                        ),
                        const OrderStatusWidget(
                          imageLocation: dropoffParcelIcon,
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
                  driverImage,
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
                        Label(
                          label: 'Desmond Miles',
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
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
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: ColorsClass.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    ratingController.rating.value = rating;
                                  },
                                ),
                              ),
                              SizedBox(width: 5),
                              Obx(
                                () => Label(
                                    label: '${ratingController.rating.value}',
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Label(
                          label: '50+ orders completed',
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: ColorsClass.greyShade600,
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
        color: Colors.grey.shade200,
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
              Label(
                label: title,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              if (time.isNotEmpty)
                Label(
                  label: time,
                  color: ColorsClass.basicGrey,
                  fontSize: 14,
                ),
              if (description.isNotEmpty)
                SizedBox(
                  width: 190,
                  child: Label(
                    label: description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    color: ColorsClass.basicGrey,
                    fontSize: 14,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
