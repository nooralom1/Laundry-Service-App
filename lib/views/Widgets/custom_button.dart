import 'package:flutter/material.dart';
import 'package:laundry_service_app/utils/const/color.dart';

class CustomButtonWidget extends StatelessWidget {
  final double height;
  final double wight;
  final Color? bgColor;
  final String buttonName;
  final double btnNameSize;
  final Color btnNameColor;
  final Function() onPressed;
  const CustomButtonWidget({
    super.key,
    required this.height,
    required this.wight,
    this.bgColor,
    required this.buttonName,
    required this.btnNameSize,
    required this.btnNameColor, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: wight,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor:
                WidgetStateProperty.all<Color>(bgColor ?? Colors.transparent),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: const BorderSide(color: CommonColor.blue, width: 2),
            ))),
        onPressed: () {
          onPressed;
        },
        child: Text(
          buttonName,
          style: TextStyle(
              fontSize: btnNameSize,
              color: btnNameColor,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
