import 'package:flutter/material.dart';
import 'package:laundry_service_app/views/screens/service/service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ServicePage(),
    );
  }
}
