import 'package:flutter/material.dart';
import 'package:laundry_service_app/utils/const/color.dart';
import 'package:laundry_service_app/views/screens/prices/widget/customlistviewbuilder.dart';

class PricePage extends StatefulWidget {
  const PricePage({super.key});

  @override
  State<PricePage> createState() => _PricePageState();
}

class _PricePageState extends State<PricePage> {
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
          "Prices",
          style: TextStyle(color: CommonColor.white),
        ),
        centerTitle: true,
        backgroundColor: CommonColor.blue,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: CustomListViewBuilderWidget(),
      ),
    );
  }
}
