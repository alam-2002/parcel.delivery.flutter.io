import 'package:carousel_slider/carousel_slider.dart';
import 'package:famani_parcel_delivery/modules/home/new_order/view/new_request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../navigation/routes.dart';
import '../theme/colors_class.dart';
import '../utilities/constants/images_constants.dart';
import 'package:famani_parcel_delivery/common/text_widget.dart';


class TestingCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset(carouselBG),
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
                padding: const EdgeInsets.fromLTRB(22, 7, 22, 10),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 13),
                          child: Label(
                            label: 'Homecooked Meals Straight to Your Door',
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: ColorsClass.basicWhite,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 0, top: 0, right: 15, bottom: 0),
                          child: Label(
                            label: 'Delicious, healthy & loved',
                            fontSize: 15,
                            height: 1.3,
                            color: ColorsClass.basicWhite,
                          ),
                        ),
                        Label(
                          label: 'meals from home!',
                          fontSize: 15,
                          height: 1.3,
                          color: ColorsClass.basicWhite,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 3),
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
                              width: 122,
                              height: 35,
                              child: ElevatedButton(
                                onPressed: () {
                                  Get.toNamed(Routes.newRequestScreen);
                                },
                                child: Label(
                                  label: 'Book Now',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
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
                            image: AssetImage(mealImage),
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

// class CustomCarouselSlider extends StatelessWidget {
//   final List<String> productImages = [
//     carouselBG,
//     carouselBG,
//     carouselBG,
//     carouselBG,
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: CarouselSlider(
//         options: CarouselOptions(
//           autoPlay: true,
//           enlargeCenterPage: true,
//           aspectRatio: 21 / 9,
//           autoPlayCurve: Curves.fastOutSlowIn,
//           enableInfiniteScroll: true,
//           autoPlayAnimationDuration: Duration(milliseconds: 800),
//           viewportFraction: 0.8,
//         ),
//         items: productImages.map((String imageUrl) {
//           return Builder(
//             builder: (BuildContext context) {
//               return InkWell(
//                 onTap: () {
//                   // Get.to(()=>OfferScreen());
//                   //redirect to offer screen
//                 },
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   margin: EdgeInsets.symmetric(horizontal: 5.0),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8.0),
//                     image: DecorationImage(
//                       image: AssetImage(imageUrl),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               );
//             },
//           );
//         }).toList(),
//       ),
//     );
//   }
// }


