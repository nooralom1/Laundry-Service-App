import 'package:flutter/cupertino.dart';
import 'package:laundry_service_app/database/price.dart';
import 'package:laundry_service_app/utils/const/color.dart';

class CustomListViewBuilderWidget extends StatelessWidget {
  const CustomListViewBuilderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: priceData.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            height: 355,
            color: CommonColor.white,
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                Text(
                  priceData[index].name,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  priceData[index].imagePath,
                  height: 150,
                  width: 221,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30, left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            priceData[index].p1 ?? "",
                            style: const TextStyle(fontSize: 12),
                          ),
                          Text(
                            priceData[index].p2 ?? "",
                            style: const TextStyle(fontSize: 12),
                          ),
                          Text(
                            priceData[index].p3 ?? "",
                            style: const TextStyle(fontSize: 12),
                          ),
                          Text(
                            priceData[index].p4 ?? "",
                            style: const TextStyle(fontSize: 12),
                          ),
                          Text(
                            priceData[index].p5 ?? "",
                            style: const TextStyle(fontSize: 12),
                          ),
                          Text(
                            priceData[index].p6 ?? "",
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            priceData[index].p7 ?? "",
                            style: const TextStyle(fontSize: 12),
                          ),
                          Text(
                            priceData[index].p8 ?? "",
                            style: const TextStyle(fontSize: 12),
                          ),
                          Text(
                            priceData[index].p9 ?? "",
                            style: const TextStyle(fontSize: 12),
                          ),
                          Text(
                            priceData[index].p10 ?? "",
                            style: const TextStyle(fontSize: 12),
                          ),
                          Text(
                            priceData[index].p11 ?? "",
                            style: const TextStyle(fontSize: 12),
                          ),
                          Text(
                            priceData[index].p12 ?? "",
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
