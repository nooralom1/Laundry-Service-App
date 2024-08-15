import 'package:flutter/material.dart';
import 'package:laundry_service_app/utils/const/color.dart';
import 'package:laundry_service_app/utils/const/images.dart';
import 'package:laundry_service_app/utils/const/text.dart';
import 'package:laundry_service_app/views/Widgets/custom_button.dart';
import 'package:laundry_service_app/views/screens/prices/price.dart';
import 'package:laundry_service_app/views/screens/service/service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColor.skyBlue,
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: CommonColor.white,
            )),
        title: const Text(
          "Home",
          style: TextStyle(color: CommonColor.white),
        ),
        centerTitle: true,
        backgroundColor: CommonColor.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
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
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButtonWidget(
                  height: 70,
                  wight: 150,
                  buttonName: CommonText.homeT5,
                  btnNameSize: 16,
                  btnNameColor: CommonColor.blue,
                  bgColor: CommonColor.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const ServicePage()));
                  },
                ),
                CustomButtonWidget(
                  height: 70,
                  wight: 150,
                  buttonName: CommonText.homeT6,
                  btnNameSize: 16,
                  btnNameColor: CommonColor.blue,
                  bgColor: CommonColor.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const PricePage()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
