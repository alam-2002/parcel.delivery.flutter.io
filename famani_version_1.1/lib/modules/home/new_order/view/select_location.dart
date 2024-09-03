import 'package:famani_parcel_delivery/common/text_widget.dart';
import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import '../../../../common/custom_appbar.dart';
import '../../../../utilities/constants/images_constants.dart';

class SelectLocation extends StatelessWidget {
  final Icon icon = Icon(Icons.search);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Select Location',
        appBar: AppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: TextFormField(
                style: TextStyle(
                  color: ColorsClass.basicBlack,
                ),
                cursorColor: ColorsClass.basicGrey,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorsClass.basicBlack, width: 2.0),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: Icon(Icons.search, color: ColorsClass.basicGrey,),
                  hintText: 'Start Typing to Search...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: ColorsClass.basicGrey,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.symmetric(horizontal: 18),
              width: double.maxFinite,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    alignment: Alignment.bottomCenter,
                    redCurrentLocationIcon,
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 15),
                  Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Label(label: 'Use current location'),
                            SizedBox(height: 1),
                            Label(label: 'G-35442, MadhavPura, VishalaPur, Morbi'),
                          ],
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                style: TextStyle(
                  color: ColorsClass.basicBlack,
                ),
                cursorColor: ColorsClass.basicGrey,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: ColorsClass.altoColor.withOpacity(0.1),
                  enabledBorder: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorsClass.basicGrey, width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.add, color: ColorsClass.basicGrey,),
                  hintText: 'Add Address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: ColorsClass.basicGrey,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            _saveAddressColumn(),
          ],
        ),
      ),
    );
  }
  Widget _saveAddressColumn(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(12.0),
        shadowColor: ColorsClass.basicBlack,
        child: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(right: 6),
          padding: EdgeInsets.symmetric(horizontal: 2, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 28),
                child: Label(
                  label: 'Saved addresses',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                ),
              ),
              SizedBox(height: 12),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 18),
                width: double.maxFinite,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      alignment: Alignment.bottomCenter,
                      blackHomeIcon,
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(width: 15),
                    Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Label(
                                label: 'Home',
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                              SizedBox(height: 1),
                              Label(label: 'G-35442, MadhavPura, VishalaPur, Morbi'),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 12),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 18),
                width: double.maxFinite,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      alignment: Alignment.bottomCenter,
                      blackHomeIcon,
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(width: 15),
                    Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Label(
                                label: 'Home',
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                              SizedBox(height: 1),
                              Label(label: 'G-35442, MadhavPura, VishalaPur, Morbi'),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 12),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 18),
                width: double.maxFinite,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      alignment: Alignment.bottomCenter,
                      blackHomeIcon,
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(width: 15),
                    Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Label(
                                label: 'Home',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                              ),
                              SizedBox(height: 1),
                              Label(label: 'G-35442, MadhavPura, VishalaPur, Morbi'),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
