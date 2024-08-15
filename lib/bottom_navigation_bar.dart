
import 'package:flutter/material.dart';
import 'package:laundry_service_app/utils/const/color.dart';
import 'package:laundry_service_app/views/screens/home/home.dart';
import 'package:laundry_service_app/views/screens/prices/price.dart';
import 'package:laundry_service_app/views/screens/profile/profile.dart';
import 'package:laundry_service_app/views/screens/service/service.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int selectedIndex = 0;
  late final List<Widget> page;

  @override
  void initState() {
    page = [
      const HomePage(),
      const ServicePage(),
      const PricePage(),
      const ProfilePage(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        currentIndex: selectedIndex,
        backgroundColor: CommonColor.blue,
        selectedItemColor: CommonColor.white,
        unselectedItemColor: CommonColor.skyBlue,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_laundry_service), label: "Services"),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money_sharp), label: "Prices"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: "Profile"),
        ],
      ),
      body: page[selectedIndex],
    );
  }
}
