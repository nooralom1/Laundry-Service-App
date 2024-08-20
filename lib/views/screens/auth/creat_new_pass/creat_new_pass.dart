import 'package:flutter/material.dart';
import 'package:laundry_service_app/utils/const/color.dart';
import 'package:laundry_service_app/utils/const/images.dart';
import 'package:laundry_service_app/utils/const/text.dart';
import 'package:laundry_service_app/views/Widgets/custom_button.dart';
import 'package:laundry_service_app/views/Widgets/custom_text.dart';
import 'package:laundry_service_app/views/Widgets/custom_textformfield.dart';
import 'package:laundry_service_app/views/screens/auth/login/login.dart';

class CreatNewPassPage extends StatefulWidget {
  const CreatNewPassPage({super.key});

  @override
  State<CreatNewPassPage> createState() => _CreatNewPassPageState();
}

class _CreatNewPassPageState extends State<CreatNewPassPage> {
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
                  CommonText.creatNewPassT1,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(CommonText.creatNewPassT1,style: TextStyle(fontSize: 16),),
                  ],
                ),
                const SizedBox(height: 5,),
                const CustomTextFormField(
                  prefixIcon: Icons.lock_outline_sharp,
                  labelText: 'Password (8 to 32)',
                  hintText: '**********',
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(CommonText.creatNewPassT2,style: TextStyle(fontSize: 16),),
                  ],
                ),
                const SizedBox(height: 5,),
                const CustomTextFormField(
                  prefixIcon: Icons.lock_outline_sharp,
                  labelText: 'Password (8 to 32)',
                  hintText: '**********',
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
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