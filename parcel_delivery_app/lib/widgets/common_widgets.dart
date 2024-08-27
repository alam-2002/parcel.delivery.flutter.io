import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Screens/instruction_for_parcel/instruction_main.dart';
import '../Screens/location/view/select_location.dart';

class TestingCarousel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset('assets/images/carousel.png'),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.transparent,
                  offset: Offset(0, 0),
                  blurRadius: 2,
                ),
              ],
            ),
            child: SizedBox(
              width: 354,
              child: Container(
                padding: EdgeInsets.fromLTRB(22, 7, 22, 10),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
                          child: Text(
                            'Homecooked Meals Straight to Your Door',
                            style: GoogleFonts.getFont(
                              'Roboto Condensed',
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Container(
                          // margin: EdgeInsets.fromLTRB(0, 0, 15, 5),
                          margin: EdgeInsets.only(left: 0, top: 0, right: 15, bottom: 0),
                          child: Text(
                            'Delicious, healthy & loved',
                            style: GoogleFonts.getFont(
                              'Roboto Condensed',
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              height: 1.3,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Text(
                          'meals from home!',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            height: 1.3,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xFFFFFFFF),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x40000000),
                                  offset: Offset(0, 0),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Container(
                              width: 122,
                              height: 35,
                              // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              // alignment: Alignment.center,
                              child: ElevatedButton(
                                onPressed: () {
                                  Get.to(InstructionScreen());
                                },
                                child: Text(
                                  'Book Now',
                                  style: GoogleFonts.getFont(
                                    'Roboto Condensed',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      right: -20,
                      bottom: -10,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/meal.png',
                            ),
                          ),
                        ),
                        child: Container(
                          width: 167,
                          height: 126,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PickupDeliver extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 11, 23),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color(0x40000000),
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
                      margin: EdgeInsets.fromLTRB(0, 3, 17, 0),
                      child: SizedBox(
                        width: 21,
                        height: 164.1,
                        child: Image.asset(
                          'assets/images/pickup_deliver.png',
                        ),
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
                              child: Text(
                                'Pickup From',
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text(
                              'Lorem Ipsum is simply dummy text of',
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                height: 1.3,
                                color: Color(0xBF000000),
                              ),
                            ),
                          ),
                          Text(
                            'the printing and typesetting industry. ',
                            style: GoogleFonts.getFont(
                              'Roboto Condensed',
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              height: 1.3,
                              color: Color(0xBF000000),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Get.to(SelectLocation());
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Color(0x1A000000)),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xFFFFFFFF),
                                  ),
                                  child: SizedBox(
                                    width: 214,
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(21, 10, 0, 14),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 4, 9, 0),
                                            child: SizedBox(
                                              width: 12,
                                              height: 12,
                                              child: Image.asset(
                                                'assets/images/plus_icon.png',
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Add Address / Contact',
                                            style: GoogleFonts.getFont(
                                              'Roboto Condensed',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14,
                                              color: Color(0x59000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Deliver to',
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.7, 0, 0, 16),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  height: 1.3,
                  color: Color(0xBF000000),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Get.to(SelectLocation());
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 63, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0x1A000000)),
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFFFFFFF),
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
                            child: Image.asset(
                              'assets/images/plus_icon.png',
                            ),
                          ),
                        ),
                        Text(
                          'Add Address / Contact',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Color(0x59000000),
                          ),
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

class InstructionRow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        onTap: (){
          Get.to(InstructionScreen());
        },
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 22),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: Color(0x59DADADA),
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
                            child: Image.asset(
                              'assets/images/running_icon.png',
                            ),
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
                                child: Text(
                                  'Instruction for Delivery',
                                  style: GoogleFonts.getFont(
                                    'Roboto Condensed',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'The parcel will buy out the goods, ',
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Color(0x80000000),
                              ),
                            ),
                            Text(
                              'receive cash or carry out other instructions.',
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Color(0x80000000),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      margin: EdgeInsets.fromLTRB(0, 15, 0, 3),
                      child: Image.asset(
                        'assets/images/play_icon.png',
                      ),
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

class RectangularButton extends StatelessWidget {

  final String title;
  final VoidCallback? onPressed;
  RectangularButton({required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFBF1E2E),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
              )
          ),
          child: Text(
            '$title',
            style: GoogleFonts.getFont(
              'Roboto Condensed',
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {

  final String text;
  TextWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: GoogleFonts.getFont(
        'Roboto Condensed',
        fontWeight: FontWeight.w700,
        fontSize: 20,
        color: Colors.black,
      ),
    );
  }
}


