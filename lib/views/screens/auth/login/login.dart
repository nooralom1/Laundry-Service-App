import 'package:flutter/material.dart';
import 'package:laundry_service_app/bottom_navigation_bar.dart';
import 'package:laundry_service_app/utils/const/color.dart';
import 'package:laundry_service_app/utils/const/images.dart';
import 'package:laundry_service_app/utils/const/text.dart';
import 'package:laundry_service_app/views/Widgets/custom_button.dart';
import 'package:laundry_service_app/views/Widgets/custom_text.dart';
import 'package:laundry_service_app/views/Widgets/custom_textformfield.dart';
import 'package:laundry_service_app/views/screens/auth/forget_password/forget_password.dart';
import 'package:laundry_service_app/views/screens/auth/signup/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  height: 50,
                ),
                const Text(
                  CommonText.loginT1,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 50,
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
                  height: 50,
                ),
                CustomButtonWidget(
                  height: 60,
                  wight: double.maxFinite,
                  buttonName: CommonText.login,
                  btnNameSize: 14,
                  btnNameColor: CommonColor.white,
                  bgColor: CommonColor.blue,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const BottomNavigationPage()));
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ForgetPasswordPage()));
                      },
                      child: const Text(
                        CommonText.loginT2,
                        style: TextStyle(color: CommonColor.blue, fontSize: 14),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(CommonText.loginT3),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupPage()));
                        },
                        child: const Text(
                          CommonText.signup,
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
