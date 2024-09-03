import 'package:famani_parcel_delivery/common/text_widget.dart';
import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilities/constants/images_constants.dart';


class PickupDeliverBox extends StatelessWidget {
  Color bgColor;
  Color titleTextColor;
  Color mainTextColor;
  bool iconRequire = false;

  PickupDeliverBox({
    super.key,
    required this.bgColor,
    required this.titleTextColor,
    required this.mainTextColor,
    required this.iconRequire,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: ColorsClass.basicBlack,
            offset: Offset(0, 0),
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
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
                          bgColor == ColorsClass.basicBlack
                              ? filledCircleWhite
                              : filledCircleGreen,
                          height: 14,
                          width: double.maxFinite,
                        ),
                        SizedBox(height: 2),
                        Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: SizedBox(
                            height: 66,
                            child: VerticalDivider(
                              width: 1,
                              thickness: 2,
                              color: bgColor == ColorsClass.basicBlack
                                  ? ColorsClass.basicWhite
                                  : ColorsClass.basicBlack,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: _pickupAndDeliver(
                    pickupDetail: 'Pickup Detail',
                    titleTextColor: titleTextColor,
                    nameTextColor: mainTextColor,
                    addressTextColor: mainTextColor,
                    numberTextColor: mainTextColor,
                  ),
                ),
                iconRequire == true
                    ? Column(
                        children: [
                          SizedBox(height: 50),
                          InkWell(
                            onTap: () {
                              print('testing');
                            },
                            child: Image.asset(switchArrow),
                          ),
                        ],
                      )
                    : SizedBox.shrink(),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 0),
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on,
                  color: bgColor == ColorsClass.basicBlack
                      ? ColorsClass.basicWhite
                      : ColorsClass.basicRed,
                ),
                SizedBox(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: _pickupAndDeliver(
                    pickupDetail: 'Dropoff Detail',
                    titleTextColor: titleTextColor,
                    nameTextColor: mainTextColor,
                    addressTextColor: mainTextColor,
                    numberTextColor: mainTextColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _pickupAndDeliver({
    required String pickupDetail,
    required Color titleTextColor,
    required Color nameTextColor,
    required Color addressTextColor,
    required Color numberTextColor,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Label(
          label: pickupDetail,
          fontSize: 15,
          color: titleTextColor,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Maya Shrinivas',
                style: GoogleFonts.robotoCondensed(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: nameTextColor,
                ),
              ),
              TextSpan(
                text: '-8765656565',
                style: GoogleFonts.robotoCondensed(
                  color: numberTextColor,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        Text(
          'Baner, Pune, Maharashtra',
          style: GoogleFonts.robotoCondensed(
            color: addressTextColor,
          ),
        ),
      ],
    );
  }
}