import 'package:flutter/material.dart';
import 'package:laundry_service_app/utils/const/color.dart';
import 'package:laundry_service_app/utils/const/images.dart';
import 'package:laundry_service_app/utils/const/text.dart';
import 'package:laundry_service_app/views/Widgets/custom_button.dart';
import 'package:laundry_service_app/views/Widgets/custom_text.dart';
import 'package:laundry_service_app/views/Widgets/custom_textformfield.dart';
import 'package:laundry_service_app/views/screens/auth/login/login.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        size: 50,
                        color: CommonColor.blue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  CommonImage.bbeLogo,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomText(),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  CommonText.signup,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomTextFormField(
                  prefixIcon: Icons.person_outline,
                  labelText: 'User Name',
                  hintText: 'Mr. Sunday',
                ),
                const SizedBox(
                  height: 15,
                ),
                const CustomTextFormField(
                  prefixIcon: Icons.email_outlined,
                  labelText: 'Email Address',
                  hintText: 'sundaymoseschidozie@gmail.com',
                ),
                const SizedBox(
                  height: 15,
                ),
                const CustomTextFormField(
                  prefixIcon: Icons.lock_outline_sharp,
                  labelText: 'Password',
                  hintText: '**********',
                ),
                const SizedBox(
                  height: 15,
                ),
                const CustomTextFormField(
                  prefixIcon: Icons.lock_outline_sharp,
                  labelText: 'Confirm Password',
                  hintText: '**********',
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomButtonWidget(
                  height: 60,
                  wight: double.maxFinite,
                  buttonName: CommonText.signup,
                  btnNameSize: 14,
                  btnNameColor: CommonColor.white,
                  bgColor: CommonColor.blue,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(CommonText.signupT),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        child: const Text(
                          CommonText.login,
                          style: TextStyle(color: CommonColor.blue),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
