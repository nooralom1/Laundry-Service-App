import 'package:flutter/material.dart';
import 'package:laundry_service_app/utils/const/color.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: CommonColor.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(2, 2),
              blurRadius: 10,
              spreadRadius: 5,
            )
          ]),
      child: const Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            "About Our Service",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "* Folding and Packaging",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "* Alteration and repair",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "* Commercial service",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "* Rug and carpet cleaning",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "* Stain removal",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "* Pick up and delivery",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "* Home service",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "* Online tracking and payment",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
