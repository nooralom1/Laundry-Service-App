import 'package:flutter/material.dart';
import 'package:laundry_service_app/utils/const/color.dart';
import 'package:laundry_service_app/utils/const/images.dart';
import 'package:laundry_service_app/utils/const/text.dart';
import 'package:laundry_service_app/views/Widgets/custom_text.dart';
import 'package:laundry_service_app/views/screens/auth/google_login/widget/custom_listtile.dart';

class GoogleLoginPage extends StatefulWidget {
  const GoogleLoginPage({super.key});

  @override
  State<GoogleLoginPage> createState() => _GoogleLoginPageState();
}

class _GoogleLoginPageState extends State<GoogleLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
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
                height: 40,
              ),
              const Text(
                CommonText.gglLgnT1,
                style: TextStyle(fontSize: 32),
              ),
              const SizedBox(
                height: 40,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    CommonText.gglLgnT2,
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    CommonText.gglLgnT3,
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomListTile(
                imagePath: CommonImage.gglLgnImage1,
                tittle: CommonText.gglLgnT4,
                subTittle: CommonText.gglLgnT5,
              ),
              const Divider(),
              const CustomListTile(
                imagePath: CommonImage.gglLgnImage2,
                tittle: CommonText.gglLgnT6,
                subTittle: CommonText.gglLgnT7,
              ),
              const CustomListTile(
                imagePath: CommonImage.gglLgnImage3,
                tittle: CommonText.gglLgnT8,
              ),
              const Divider(),
              const SizedBox(
                height: 50,
              ),
              const Text(CommonText.gglLgnT9),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 23),
                child: Row(
                  children: [
                    Text(
                      CommonText.gglLgnT10,
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      CommonText.gglLgnT11,
                      style: TextStyle(fontSize: 14, color: CommonColor.blue),
                    ),
                    Text(
                      CommonText.gglLgnT12,
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      CommonText.gglLgnT13,
                      style: TextStyle(fontSize: 14, color: CommonColor.blue),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
