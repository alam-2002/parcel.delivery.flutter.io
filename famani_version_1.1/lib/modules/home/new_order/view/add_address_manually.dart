import 'package:famani_parcel_delivery/common/text_widget.dart';
import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/custom_appbar.dart';
import '../../../../common/rectangular_button.dart';
import '../../../../common/user_input_text_field.dart';
import '../../../../navigation/routes.dart';


class AddAddressManually extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: 'Add Address',
        appBar: AppBar(),
      ),
      body: Container(
        child: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 5),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _addressInfoSection(),
                        const SizedBox(height: 20),
                        _locationDetail(),
                        const SizedBox(height: 20),
                        UserInputTextField(
                          keyboardType: TextInputType.text,
                          hintText: 'Person Name',
                        ),
                        const SizedBox(height: 8),
                        UserInputTextField(
                          keyboardType: TextInputType.number,
                          hintText: 'Phone Number',
                        ),
                        const SizedBox(height: 8),
                        UserInputTextField(
                          keyboardType: TextInputType.text,
                          hintText: 'Direction',
                        ),
                        const SizedBox(height: 8),
                        UserInputTextField(
                          keyboardType: TextInputType.text,
                          hintText: 'Trademark Description',
                        ),

                        const SizedBox(height: 8),
                        _saveAddressAs(),
                        const SizedBox(height: 8),
                        _threeButton(),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RectangularButton(
              onPressed: () {
                Get.toNamed(Routes.newRequestScreen);
              },
              title: 'Save Address'),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _addressInfoSection() {
    return SizedBox(
      height: 42,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            color: ColorsClass.galleryColor,
          ),
          Label(
            label: 'Enter the address where you want your order to be delivered to',
              fontSize: 11,
              color: ColorsClass.kashmirBlue,
            ),
        ],
      ),
    );
  }

  Widget _locationDetail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.symmetric(horizontal: 18),
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Icon(
              Icons.location_on_outlined,
              color: Colors.red,
              size: 35,
            ),
          ),
          SizedBox(width: 15),
          Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Label(
                      label: 'Waghavadi Palace',
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    SizedBox(height: 1),
                    Label(label: 'Bhavnagar,Gujarat, India'),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget _saveAddressAs() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Label(
          label: 'Save address as*',
            fontSize: 12,
            color: Colors.grey,
        ),
      ),
    );
  }

  Widget _threeButton() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: ColorsClass.basicWhite,
              backgroundColor: ColorsClass.basicBlack,
              minimumSize: Size(70, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Label(
              label: 'Home',
                fontWeight: FontWeight.w700,
                fontSize: 15,
              color: ColorsClass.basicWhite,
              ),
          ),
          Spacer(flex: 32),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.resolveWith<Color>(
                      (Set<WidgetState> states) {
                    if (states.contains(WidgetState.pressed)) {
                      return ColorsClass.basicBlack;
                    }
                    return ColorsClass.basicGrey;
                  }),
              foregroundColor: WidgetStateProperty.resolveWith<Color>(
                      (Set<WidgetState> states) {
                    if (states.contains(WidgetState.pressed)) {
                      return ColorsClass.basicWhite;
                    }
                    return ColorsClass.basicBlack;
                  }),
              minimumSize: WidgetStateProperty.all<Size>(Size(70, 40)),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            child: Label(
              label: 'Office',
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
          ),
          Spacer(flex: 32),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.resolveWith<Color>(
                      (Set<WidgetState> states) {
                    if (states.contains(WidgetState.pressed)) {
                      return ColorsClass.basicBlack;
                    }
                    return ColorsClass.basicGrey;
                  }),
              foregroundColor: WidgetStateProperty.resolveWith<Color>(
                      (Set<WidgetState> states) {
                    if (states.contains(WidgetState.pressed)) {
                      return ColorsClass.basicWhite;
                    }
                    return ColorsClass.basicBlack;
                  }),
              minimumSize: WidgetStateProperty.all<Size>(Size(70, 40)),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            child: Label(
              label: 'Other',
                fontWeight: FontWeight.w700,
                fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

