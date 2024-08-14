import 'package:flutter/material.dart';
import 'package:laundry_service_app/utils/const/color.dart';

class CustomTextFormField extends StatelessWidget {
  final IconData prefixIcon;
  final String labelText;
  final String hintText;
  const CustomTextFormField({
    super.key,
    required this.prefixIcon,
    required this.labelText,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: CommonColor.blue,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(15)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: CommonColor.blue,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(15)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          prefixIcon: Icon(
            prefixIcon,
            color: CommonColor.blue,
          ),
          labelText: labelText,
          hintText: hintText,
        ),
      ),
    );
  }
}
