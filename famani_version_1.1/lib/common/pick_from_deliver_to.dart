import 'package:famani_parcel_delivery/common/text_widget.dart';
import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../navigation/routes.dart';
import '../utilities/constants/images_constants.dart';

class PickupDeliver extends StatelessWidget {
  bool needText;

  PickupDeliver({required this.needText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 11, 23),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: ColorsClass.basicWhite,
        boxShadow: [
          BoxShadow(
            color: ColorsClass.basicBlack,
            offset: Offset(0, 0),
            blurRadius: 2,
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 24, 20, 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 5.9),
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 3, 15, 0),
                      child: SizedBox(
                        width: 21,
                        height: 164.1,
                        child: Image.asset(pickupFromIcon),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 3.1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Label(
                                label: 'Pickup From',
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          needText == true
                              ? Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Label(
                                    label:
                                        'Lorem Ipsum is simply dummy text of the ',
                                    fontSize: 15,
                                    height: 1.3,
                                  ),
                                )
                              : SizedBox.shrink(),
                          needText == true
                              ? Label(
                                  label: 'printing and typesetting industry.',
                                  fontSize: 15,
                                  height: 1.3,
                                )
                              : SizedBox.shrink(),
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.selectLocationScreen);
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: ColorsClass.basicBlack),
                                    borderRadius: BorderRadius.circular(20),
                                    color: ColorsClass.basicWhite,
                                  ),
                                  child: SizedBox(
                                    width: 214,
                                    child: Container(
                                      padding:
                                          EdgeInsets.fromLTRB(21, 10, 0, 14),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin:
                                                EdgeInsets.fromLTRB(0, 4, 9, 0),
                                            child: SizedBox(
                                              width: 12,
                                              height: 12,
                                              child: Image.asset(plusIcon),
                                            ),
                                          ),
                                          Label(
                                            label: 'Add Address / Contact',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            height: 1.3,
                                            color: ColorsClass.basicGrey,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          needText == false
                              ? SizedBox(height: 45)
                              : SizedBox.shrink(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Label(
                              label: 'Deliver to',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            needText == true
                ? Container(
                    margin: EdgeInsets.fromLTRB(15.7, 0, 0, 16),
                    child: Label(
                      label:
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      fontSize: 15,
                      height: 1.3,
                    ),
                  )
                : SizedBox.shrink(),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.selectLocationScreen);
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 63, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: ColorsClass.basicBlack),
                  borderRadius: BorderRadius.circular(20),
                  color: ColorsClass.basicWhite,
                ),
                child: SizedBox(
                  width: 214,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(21, 11, 0, 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 4, 9, 0),
                          child: SizedBox(
                            width: 12,
                            height: 12,
                            child: Image.asset(plusIcon),
                          ),
                        ),
                        Label(
                          label: 'Add Address / Contact',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: ColorsClass.basicGrey,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
