import 'package:flutter/material.dart';
import 'package:laundry_service_app/utils/const/color.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
            "Profile",
            style: TextStyle(color: CommonColor.white),
          ),
          centerTitle: true,
          backgroundColor: CommonColor.blue,
        ));
  }
}
