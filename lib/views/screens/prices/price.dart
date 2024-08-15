
import 'package:flutter/material.dart';
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
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    height: 355,
                    color: CommonColor.white,
                    child: Column(
                      children: [
                        const SizedBox(height: 5,),
                        const Text("Wears",style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),),
                        const SizedBox(height: 10,),
                        Image.asset(
                          "assets/images/Rectangle 14.png",
                          height: 150,
                          width: 221,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "* T-shirt on hanger  #2,500",
                                  style: TextStyle(
                                      fontSize: 12),
                                ),
                                Text(
                                  "* 2-piece suit  #3,500",
                                  style: TextStyle(
                                      fontSize: 12),
                                ),
                                Text(
                                  "* Short  #2,000",
                                  style: TextStyle(
                                      fontSize: 12),
                                ),
                                Text(
                                  "* Dress  #2,500",
                                  style: TextStyle(
                                      fontSize: 12),
                                ),
                                Text(
                                  "* Jeans  #2,500",
                                  style: TextStyle(
                                      fontSize: 12),
                                ),
                                Text(
                                  "* Native wear  #2,500",
                                  style: TextStyle(
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "* T-shirt folded  #3,000",
                                  style: TextStyle(
                                      fontSize: 12),
                                ),
                                Text(
                                  "* 3-piece suit  #4,000",
                                  style: TextStyle(
                                      fontSize: 12),
                                ),
                                Text(
                                  "* Pyjamas  #2,500",
                                  style: TextStyle(
                                      fontSize: 12),
                                ),
                                Text(
                                  "* Single top  #3,000",
                                  style: TextStyle(
                                      fontSize: 12),
                                ),
                                Text(
                                  "* Complete agbada  #3,000",
                                  style: TextStyle(
                                      fontSize: 12),
                                ),
                                Text(
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
