import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final double? textSize;
  final FontWeight? textWight;
  const CustomText({
    super.key, required this.text, this.textColor, this.textSize, this.textWight,
  });

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(color: textColor, fontSize: textSize,fontWeight: textWight),
    );
  }
}