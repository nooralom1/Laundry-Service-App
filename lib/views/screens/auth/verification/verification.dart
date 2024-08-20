import 'package:flutter/material.dart';
import 'package:laundry_service_app/utils/const/color.dart';
import 'package:laundry_service_app/utils/const/images.dart';
import 'package:laundry_service_app/utils/const/text.dart';
import 'package:laundry_service_app/views/Widgets/custom_button.dart';
import 'package:laundry_service_app/views/Widgets/custom_text.dart';
import 'package:laundry_service_app/views/screens/auth/creat_new_pass/creat_new_pass.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();
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
                  height: 30,
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      CommonText.verificationT1,
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      CommonText.verificationT2,
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      CommonText.verificationT3,
                      style: TextStyle(fontSize: 14, color: Colors.red),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                OtpPinField(
                    key: _otpPinFieldController,
                    autoFillEnable: false,
                    textInputAction: TextInputAction.done,
                    onSubmit: (text) {},
                    onChange: (text) {},
                    onCodeChanged: (code) {},
                    otpPinFieldStyle: const OtpPinFieldStyle(
                      activeFieldBorderGradient: LinearGradient(
                          colors: [Colors.black, Colors.redAccent]),
                      filledFieldBorderGradient: LinearGradient(
                          colors: [Colors.green, Colors.tealAccent]),
                      defaultFieldBorderGradient:
                          LinearGradient(colors: [Colors.orange, Colors.brown]),
                    )),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      CommonText.verificationT4,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomButtonWidget(
                  height: 60,
                  wight: double.maxFinite,
                  buttonName: CommonText.continue_,
                  btnNameSize: 14,
                  btnNameColor: CommonColor.white,
                  bgColor: CommonColor.blue,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreatNewPassPage()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
