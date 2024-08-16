
import 'package:flutter/material.dart';
import 'package:laundry_service_app/models/price.dart';
import 'package:laundry_service_app/utils/const/color.dart';

class PricePage extends StatefulWidget {
  const PricePage({super.key});

  @override
  State<PricePage> createState() => _PricePageState();
}

class _PricePageState extends State<PricePage> {
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
            "Prices",
            style: TextStyle(color: CommonColor.white),
          ),
          centerTitle: true,
          backgroundColor: CommonColor.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView.builder(
              itemCount: priceData.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    height: 355,
                    color: CommonColor.white,
                    child: Column(
                      children: [
                        const SizedBox(height: 5,),
                         Text(priceData[index].name,style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),),
                        const SizedBox(height: 10,),
                        Image.asset(
                          priceData[index].imagePath,
                          height: 150,
                          width: 221,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                         Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  priceData[index].p1??"",
                                  style: const TextStyle(
                                      fontSize: 12),
                                ),
                                Text(
                                  priceData[index].p2??"",
                                  style: const TextStyle(
                                      fontSize: 12),
                                ),
                                Text(
                                  priceData[index].p3??"",
                                  style: const TextStyle(
                                      fontSize: 12),
                                ),
                                Text(
                                  priceData[index].p4??"",
                                  style: const TextStyle(
                                      fontSize: 12),
                                ),
                                Text(
                                  priceData[index].p5??"",
                                  style: const TextStyle(
                                      fontSize: 12),
                                ),
                                Text(
                                  priceData[index].p6??"",
                                  style: const TextStyle(
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            const SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  priceData[index].p7??"",
                                  style: const TextStyle(
                                      fontSize: 12),
                                ),
                                Text(
                                  priceData[index].p8??"",
                                  style: const TextStyle(
                                      fontSize: 12),
                                ),
                                const Text(
                                  "* Pyjamas  #2,500",
                                  style: TextStyle(
                                      fontSize: 12),
                                ),
                                const Text(
                                  "* Single top  #3,000",
                                  style: TextStyle(
                                      fontSize: 12),
                                ),
                                const Text(
                                  "* Complete agbada  #3,000",
                                  style: TextStyle(
                                      fontSize: 12),
                                ),
                                const Text(
                                  "* Lace wears  #3,000",
                                  style: TextStyle(
                                      fontSize: 12),
                                ),
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
