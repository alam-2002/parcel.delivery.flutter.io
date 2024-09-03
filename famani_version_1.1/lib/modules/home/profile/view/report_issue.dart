import 'package:famani_parcel_delivery/common/custom_appbar.dart';
import 'package:famani_parcel_delivery/common/text_widget.dart';
import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../navigation/routes.dart';
import '../../../../utilities/constants/images_constants.dart';

class ReportIssueScreen extends StatelessWidget {
  const ReportIssueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: 'Report issue',
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                _reportIssueStack(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: (){
              Get.offNamed(Routes.bookingScreenMain);
            },
            child: Image.asset(
              fabButton,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _reportIssueStack() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        color: ColorsClass.citrineWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 194,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Label(label:
                          'Personal Issue',
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                        ),
                        SizedBox(height: 10),
                        Label(
                          label: 'Issue Date',
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: ColorsClass.basicGrey,
                        ),
                        SizedBox(height: 2),
                        Label(
                          label: 'June 10 2023',
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                        ),
                        SizedBox(height: 10),
                        Label(
                          label: 'Status',
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: ColorsClass.basicGrey,
                          ),
                        SizedBox(height: 2),
                        Label(
                          label: 'Open',
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                  decoration: BoxDecoration(
                    color: ColorsClass.primaryRed,
                    borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(34)),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Label(
                        label: 'issue',
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: ColorsClass.basicWhite,
                      ),
                      SizedBox(height: 2),
                      Label(
                        label: '#3423',
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: ColorsClass.basicWhite,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
