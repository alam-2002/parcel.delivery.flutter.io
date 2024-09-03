import 'package:famani_parcel_delivery/common/text_widget.dart';
import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CallPaymentDetailsBottomsheet extends StatelessWidget {
  const CallPaymentDetailsBottomsheet({super.key});
  void _redirectPaymentDetails() {
    Get.bottomSheet(
      backgroundColor: ColorsClass.basicWhite,
      PaymentDetailsBottomsheet(),
      isScrollControlled: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: _redirectPaymentDetails, child: PaymentDetailsBox());
  }
}

class PaymentDetailsBottomsheet extends StatelessWidget {
  const PaymentDetailsBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 20),
      child: Column(
        children: [
          Container(
            height: 8,
            width: 200,
            decoration: BoxDecoration(
              color: ColorsClass.altoColor,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          SizedBox(height: 24),
          Align(
            alignment: Alignment.center,
            child: Label(
              label: 'Who will Pay the Cash?',
              fontWeight: FontWeight.w700,
              fontSize: 25,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 25),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PaymentdetailsContainer(),
                SizedBox(height: 4),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class PaymentdetailsContainer extends StatelessWidget {
  final CheckboxController checkboxController = Get.put(CheckboxController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.symmetric(horizontal: 9),
      child: Container(
        decoration: BoxDecoration(
          color: ColorsClass.citrineWhite,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: SizedBox(
                      width: 270,
                      child: Label(
                        label: 'Sender',
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(right: 0),
                    child: SizedBox(
                      width: 14,
                      height: 14,
                      child: Obx(
                        () => Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                            value: checkboxController.isChecked.value,
                            onChanged: (bool? newValue) {
                              checkboxController.toggleCheckbox();
                            },
                            autofocus: false,
                            checkColor: Colors.white,
                            fillColor: WidgetStatePropertyAll<Color>(
                                ColorsClass.primaryRed),
                            side: BorderSide(
                              color: ColorsClass.basicBlack,
                            ),
                            activeColor: ColorsClass.basicBlack,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
              child: Divider(
                thickness: 2,
                endIndent: 28,
                indent: 28,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: SizedBox(
                      width: 270,
                      child: Label(
                        label: 'Receiver',
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(right: 0),
                    child: SizedBox(
                      width: 14,
                      height: 14,
                      child: Obx(
                        () => Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                            value: checkboxController.isChecked.value,
                            onChanged: (bool? newValue) {
                              checkboxController.toggleCheckbox();
                            },
                            autofocus: false,
                            checkColor: ColorsClass.basicWhite,
                            fillColor: WidgetStatePropertyAll<Color>(
                                ColorsClass.primaryRed),
                            side: BorderSide(
                              color: ColorsClass.basicBlack,
                            ),
                          ),
                        ),
                      ),
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

class PaymentDetailsBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: ColorsClass.concreteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.maxFinite,
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 20),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Label(
                    label: 'Who will pay the cash?',
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 8),
          Center(
            child: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}

//controller class for check box
class CheckboxController extends GetxController {
  var isChecked = false.obs;

  void toggleCheckbox() {
    isChecked.value = !isChecked.value;
  }
}
