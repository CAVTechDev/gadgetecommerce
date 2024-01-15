// ignore_for_file: dead_code, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final categoryname;

  const Categories({super.key, required this.categoryname});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      focusColor: Color.fromARGB(255, 84, 230, 91),
      splashColor: Color.fromARGB(255, 84, 230, 91),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Text(categoryname),
      ),
    );
  }
}
