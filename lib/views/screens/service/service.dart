import 'package:flutter/material.dart';
import 'package:laundry_service_app/utils/const/color.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
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
            "Services",
            style: TextStyle(color: CommonColor.white),
          ),
          centerTitle: true,
          backgroundColor: CommonColor.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    height: 150,
                    color: CommonColor.white,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/Rectangle 14.png",
                          height: 150,
                          width: 114,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Laundry Service",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "This is regular laundry, items are\nwashed, tumble dried and neatly\nfolded garments. All order will be\ncharged based on weight",
                              style: TextStyle(
                                  fontSize: 13,),
                            ),
                            SizedBox(height: 15,),
                            Row(
                              children: [
                                Text("Check prices",style: TextStyle(color: CommonColor.blue),),
                                Icon(Icons.chevron_right,color: CommonColor.blue,)
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
        ));
  }
}
