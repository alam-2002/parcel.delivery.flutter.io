import 'package:famani_parcel_delivery/common/custom_appbar.dart';
import 'package:famani_parcel_delivery/common/text_widget.dart';
import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import '../../../../common/bottom_navigation_bar.dart';
import '../../../../common/package_details_bottomsheet.dart';
import '../../../../common/pickup_deliver_box.dart';
import '../../../../common/rectangular_button.dart';
import '../../../../navigation/routes.dart';
import '../../../../utilities/constants/images_constants.dart';
import '../controller/rating_bar_controller.dart';


class BookingDetails extends StatelessWidget {
  const BookingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Booking Details',
        appBar: AppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _orderInfo(),
            const SizedBox(height: 15),
            PickupDeliverBox(
              titleTextColor: ColorsClass.greyShade600,
              mainTextColor: ColorsClass.basicBlack,
              bgColor: ColorsClass.mercuryGrey,
              iconRequire: false,
            ),
            const SizedBox(height: 10),
            const CallPackageDetailsBottomsheet(),
            const SizedBox(height: 15),
            _driverDetails(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.raiseIssueScreen);
                  },
                  child: Label(label: 'Any issue?', color: ColorsClass.basicBlue),
                ),
              ],
            ),
            const SizedBox(height: 50),
            RectangularButton(
              title: 'Track',
              onPressed: () {
                Get.toNamed(Routes.trackDriverScreen);
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: MyNavigationBar(),
    );
  }
  
  Widget _orderInfo() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 5),
      decoration: BoxDecoration(
        color: ColorsClass.basicBlack,
        borderRadius: BorderRadius.circular(15),
      ),
      width: double.maxFinite,
      height: 70,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 20),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Label(
                      label: 'Order ID #456554343',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: ColorsClass.basicWhite,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 30),
        ],
      ),
    );
  }
  
  Widget _driverDetails() {
    final RatingController ratingController = Get.put(RatingController());
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ColorsClass.citrineWhite,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Label(
            label: 'Driver Details',
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
          const SizedBox(height: 10),
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
                const SizedBox(width: 16),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4),
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
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    ratingController.rating.value = rating;
                                  },
                                ),
                              ),
                              const SizedBox(width: 5),
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

