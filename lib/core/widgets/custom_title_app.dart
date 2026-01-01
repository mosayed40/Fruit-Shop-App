import 'package:flutter/material.dart';

class CustomTitleApp extends StatelessWidget {
  const CustomTitleApp({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      'Fruit Market',
      style: TextStyle(fontSize: 51, fontWeight: FontWeight.bold, color: color),
    );
  }
}
