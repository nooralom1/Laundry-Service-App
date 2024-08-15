import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String imagePath;
  final String tittle;
  final String? subTittle;
  const CustomListTile({
    super.key,
    required this.imagePath,
    required this.tittle,
    this.subTittle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Image.asset(imagePath),
      ),
      title: Text(
        tittle,
        style: const TextStyle(fontSize: 16),
      ),
      subtitle: Text(
        subTittle ?? "",
        style: const TextStyle(fontSize: 14),
      ),
    );
  }
}
