// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final icon;
  const IconContainer({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey.shade300),
          color: Colors.white),
      child: icon,
    );
  }
}
