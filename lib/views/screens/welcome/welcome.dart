
import 'package:flutter/material.dart';
import 'package:laundry_service_app/utils/const/color.dart';
import 'package:laundry_service_app/utils/const/images.dart';
import 'package:laundry_service_app/utils/const/text.dart';
import 'package:laundry_service_app/views/Widgets/custom_button.dart';
import 'package:laundry_service_app/views/Widgets/custom_text.dart';
import 'package:laundry_service_app/views/screens/auth/login/login.dart';
import 'package:laundry_service_app/views/screens/auth/signup/signup.dart';
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
                height: 80,
              ),
              Image.asset(
                CommonImage.bbeLogo,
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomText(),
              const SizedBox(
                height: 50,
              ),
              const Text(
                CommonText.welcomeT1,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                height: 50,
              ),
              const ContinueWithGoogleButton(),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButtonWidget(
                    height: 50,
                    wight: 150,
                    buttonName: CommonText.login,
                    btnNameSize: 20,
                    btnNameColor: CommonColor.white,
                    bgColor: CommonColor.blue,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                  ),
                  CustomButtonWidget(
                    height: 50,
                    wight: 150,
                    buttonName: CommonText.signup,
                    btnNameSize: 20,
                    btnNameColor: CommonColor.blue,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupPage()));
                    },
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
