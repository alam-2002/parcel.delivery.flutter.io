import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/common_widgets.dart';
import '../widgets/drawer_widget.dart';
import 'location/view/location_main.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New Request',
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            fontWeight: FontWeight.w700,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      drawer: MyDrawerWidget(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 5),
              TestingCarousel(),
              SizedBox(height: 15),
              PickupDeliver(),
              SizedBox(height: 1),
              InstructionRow(),
              SizedBox(height: 1),
              RectangularButton(
                onPressed: () {
                  Get.to( () => LocationMain());
                },
                title: 'Continue',
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyNavigationBar(),
    );
  }
}

class BannerCarousel extends StatelessWidget {
  final List<String> productImages = [
    'assets/images/carousel.png',
    'assets/images/carousel.png',
    'assets/images/carousel.png',
    'assets/images/carousel.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 21 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
        items: productImages.map((String imageUrl) {
          return Builder(
            builder: (BuildContext context) {
              return InkWell(
                onTap: () {
                  // Get.to(()=>OfferScreen());
                  //redirect to offer screen
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

