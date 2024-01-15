// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String imagepath;
  final name;
  final price;
  final rating;
  final onTapp;

  const CategoryContainer({
    super.key,
    required this.imagepath,
    required this.name,
    required this.price,
    required this.rating,
    this.onTapp,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 170,
        height: 240,
        decoration: BoxDecoration(color: Colors.white),
        //inner column
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image container
            Container(
              width: 170,
              height: 170,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(imagepath),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 16,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[700],
                      size: 20,
                    ),
                    Text(
                      rating,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )
                  ],
                )
              ],
            ),
            Text(
              price,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
