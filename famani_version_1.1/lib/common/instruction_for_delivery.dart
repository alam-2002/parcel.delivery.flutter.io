import 'package:famani_parcel_delivery/common/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:famani_parcel_delivery/theme/colors_class.dart';
import '../utilities/constants/images_constants.dart';

class InstructionRow extends StatelessWidget {

  VoidCallback onTap;
  InstructionRow({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 22),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: ColorsClass.greyBg,
              borderRadius: BorderRadius.circular(15),
            ),
            child: SizedBox(
              width: 489,
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 12, 41, 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          margin: EdgeInsets.fromLTRB(0, 10, 9, 3),
                          child: SizedBox(
                            width: 20,
                            height: 26,
                            child: Image.asset(runningIcon),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child:
                                Label(
                                  label: 'Instruction for Delivery',
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Label(
                              label: 'The parcel will buy out the goods, ',
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                            Label(
                              label: 'receive cash or carry out other instructions.',
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      margin: EdgeInsets.fromLTRB(0, 15, 0, 3),
                      child: Image.asset(playIcon),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}