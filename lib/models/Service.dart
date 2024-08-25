import 'package:flutter/cupertino.dart';

class ServiceModel {
  final String imagePath;
  final String serviceName;
  final String serviceDetails;
  final String serviceCharge;
  final IconData rightArrow;
  ServiceModel({
    required this.imagePath,
    required this.serviceName,
    required this.serviceDetails,
    required this.serviceCharge,
    required this.rightArrow,
  });
}
