import 'dart:async';

import 'package:flutter/material.dart';
import 'package:laundry_service_app/utils/const/color.dart';
import 'package:laundry_service_app/utils/const/images.dart';
import 'package:laundry_service_app/views/Widgets/custom_text.dart';
import 'package:laundry_service_app/views/screens/welcome/welcome.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const WelcomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColor.skyBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(CommonImage.bbeLogo),
            const SizedBox(
              height: 30,
            ),
            const CustomText()
          ],
        ),
      ),
    );
  }
}
