import 'package:flutter/cupertino.dart';
import 'package:laundry_service_app/utils/const/color.dart';
import 'package:laundry_service_app/utils/const/images.dart';
import 'package:laundry_service_app/utils/const/text.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 450,
      decoration: BoxDecoration(
          color: CommonColor.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2, color: CommonColor.blue)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(CommonImage.bbeLogo),
            const SizedBox(
              height: 30,
            ),
            const Text(
              CommonText.homeT1,
              style: TextStyle(
                  color: CommonColor.blue, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              CommonText.homeT2,
              style: TextStyle(
                  color: CommonColor.blue, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              CommonText.homeT3,
              style: TextStyle(color: CommonColor.blue, fontSize: 10),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              CommonText.homeT4,
              style: TextStyle(
                  color: CommonColor.blue, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
