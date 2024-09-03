import 'package:famani_parcel_delivery/common/text_widget.dart';
import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../navigation/routes.dart';
import '../utilities/constants/images_constants.dart';


class BookingDetailsContainer extends StatelessWidget {

  String status;
  BookingDetailsContainer({required this.status});

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: (){
        Get.toNamed(Routes.bookingDetailsScreen);
      },
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
        decoration: BoxDecoration(
          color: ColorsClass.concreteColor,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Label(
                    label: 'Booking ID:gsdwe354756',
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                  ),
                  Label(
                    label: status,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: status == 'Complete' ? Colors.lightGreen : Colors.red,
                      fontStyle: FontStyle.italic,
                  ),
                ],
              ),
            ),
            SizedBox(height: 2),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2),
                  child: Label(
                    label: 'Jan 10, 2022 3:14 PM',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
              ],
            ),
            SizedBox(height: 5),
            SizedBox(
              width: double.maxFinite,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            filledCircleGreen,
                            height: 14,
                            width: double.maxFinite,
                          ),
                          SizedBox(height: 2),
                          Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: SizedBox(
                              height: 40,
                              child: VerticalDivider(
                                width: 1,
                                thickness: 2,
                                color: ColorsClass.basicBlack,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Label(
                      label: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                        fontSize: 15,
                        color: ColorsClass.basicGrey,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 0),
              width: double.maxFinite,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.location_on, color: Colors.red),
                  SizedBox(width: 10),
                  Expanded(
                    child: Label(
                      label: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                        fontSize: 15,
                        color: ColorsClass.basicGrey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}