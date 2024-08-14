import 'package:flutter/cupertino.dart';
import 'package:laundry_service_app/utils/const/text.dart';

class CustomText extends StatelessWidget {
  const CustomText();

  @override
  Widget build(BuildContext context) {
    return  Text(
      CommonText.customText,
      style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),
    );
  }
}