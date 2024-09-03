import 'package:famani_parcel_delivery/common/text_widget.dart';
import 'package:famani_parcel_delivery/theme/colors_class.dart';
import 'package:flutter/material.dart';

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
              backgroundColor: ColorsClass.buttonColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
              )
          ),
          child: Label(
            label: title,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}