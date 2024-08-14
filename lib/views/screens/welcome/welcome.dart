import 'package:flutter/material.dart';
import 'package:laundry_service_app/utils/const/color.dart';
import 'package:laundry_service_app/utils/const/images.dart';
import 'package:laundry_service_app/utils/const/text.dart';
import 'package:laundry_service_app/views/Widgets/custom_button.dart';
import 'package:laundry_service_app/views/Widgets/custom_text.dart';
import 'package:laundry_service_app/views/screens/welcome/widget/continue_with_google_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                CommonImage.bbeLogo,
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomText(
                text:  CommonText.welcomeT1,
               textColor: CommonColor.black,
                    textWight: FontWeight.w600,
                    textSize: 14,
              ),
              const SizedBox(
                height: 50,
              ),
              const CustomText(
                text:CommonText.welcomeT2,
                textSize: 14,
              ),
              const SizedBox(
                height: 50,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: CommonText.welcomeT3,
                    textColor: CommonColor.blue,
                    textSize: 14,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomText(
                    text: CommonText.welcomeT4,
                    textColor: CommonColor.blue,
                    textSize: 14,
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const ContinueWithGoogleButton(),
              const SizedBox(
                height: 50,
              ),
              const CustomText(
                text: CommonText.welcomeT6,
                textColor: CommonColor.blue,
                textSize: 14,
              ),
              const SizedBox(
                height: 70,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButtonWidget(
                    height: 50,
                    wight: 150,
                    buttonName: 'LOGIN',
                    btnNameSize: 20,
                    btnNameColor: CommonColor.white,
                    bgColor: CommonColor.blue,
                  ),
                  CustomButtonWidget(
                    height: 50,
                    wight: 150,
                    buttonName: 'SIGN UP',
                    btnNameSize: 20,
                    btnNameColor: CommonColor.blue,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}