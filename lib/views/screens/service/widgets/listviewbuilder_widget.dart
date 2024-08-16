import 'package:flutter/cupertino.dart';
import 'package:laundry_service_app/models/Service.dart';
import 'package:laundry_service_app/utils/const/color.dart';

class ListViewBuilderWidget extends StatelessWidget {
  const ListViewBuilderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                          style: const TextStyle(
                              color: CommonColor.blue),
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
    );
  }
}
