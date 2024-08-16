import 'package:flutter/material.dart';
import 'package:laundry_service_app/models/Service.dart';
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
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: serviceData.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      height: 150,
                      color: CommonColor.white,
                      child: Row(
                        children: [
                          Image.asset(
                            serviceData[index].imagePath,
                            height: 150,
                            width: 114,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                serviceData[index].serviceName,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                serviceData[index].serviceDetails,
                                style: const TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Text(
                                    serviceData[index].serviceCharge,
                                    style: const TextStyle(color: CommonColor.blue),
                                  ),
                                  Icon(
                                    serviceData[index].rightArrow,
                                    color: CommonColor.blue,
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 150,
              width: double.maxFinite,
              color: CommonColor.white,
              child: const Column(
                children: [
                  SizedBox(height: 5,),
                  Text("About Our Service",style: TextStyle(fontWeight: FontWeight.w600),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "* Folding and Packaging",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                           "* Alteration and repair",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            "* Commercial service",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            "* Rug and carpet cleaning",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "* Stain removal",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            "* Pick up and delivery",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            "* Home service",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            "* Online tracking and payment",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}