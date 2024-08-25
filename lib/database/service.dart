import 'package:flutter/cupertino.dart';
import 'package:laundry_service_app/models/Service.dart';

List<ServiceModel> serviceData = [
  ServiceModel(
    imagePath: "assets/images/Rectangle 14.png",
    serviceName: "Laundry Service",
    serviceDetails:
        "This is regular laundry, items are\nwashed, tumble dried and neatly\nfolded garments. All order will be\ncharged based on weight",
    serviceCharge: "Check prices",
    rightArrow: CupertinoIcons.right_chevron,
  ),
  ServiceModel(
    imagePath: "assets/images/Rectangle 16.png",
    serviceName: "Clean & Iron",
    serviceDetails:
        "This is washed and iron on \nhanger by default. Folding can\nbe requested additionally.",
    serviceCharge: "Check prices",
    rightArrow: CupertinoIcons.right_chevron,
  ),
  ServiceModel(
    imagePath: "assets/images/Rectangle 18.png",
    serviceName: "Folding & packaging",
    serviceDetails:
        "This is ironing only on hanger by\ndefault. Folding can be \nrequested additionally.",
    serviceCharge: "Check prices",
    rightArrow: CupertinoIcons.right_chevron,
  ),
  ServiceModel(
    imagePath: "assets/images/Rectangle 20.png",
    serviceName: "Dry Cleaning",
    serviceDetails:
        "Dry cleaning items clean and\nironing,. Folding can be \nrequestes  additionally. ",
    serviceCharge: "Check prices",
    rightArrow: CupertinoIcons.right_chevron,
  ),
  ServiceModel(
    imagePath: "assets/images/Rectangle 22.png",
    serviceName: "Commercial cleaning",
    serviceDetails:
        "The cleaning process varies \ndepending on the each item\nrequirement, some item may \nneed 72hours to complete.",
    serviceCharge: "Check prices",
    rightArrow: CupertinoIcons.right_chevron,
  ),
  ServiceModel(
    imagePath: "assets/images/Rectangle 24.png",
    serviceName: "Ironing/pressing",
    serviceDetails:
        "Alteration requires a different \nprocess. Priced per item up to\n72hours",
    serviceCharge: "Check prices",
    rightArrow: CupertinoIcons.right_chevron,
  ),
];
