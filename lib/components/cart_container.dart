// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CartContainer extends StatelessWidget {
  final imagepath;
  final String contentname;
  final String price;
  final size;

  const CartContainer(
      {super.key,
      required this.imagepath,
      required this.contentname,
      required this.price,
      this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            width: 150,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(15)),
            child: Image.asset(imagepath),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 210,
            padding: EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      contentname,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    Icon(Icons.cancel)
                  ],
                ),
                Text(
                  size,
                  style: TextStyle(color: Colors.grey.shade300, fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.horizontal_rule,
                            size: 15,
                          )),
                    ),
                    Text(
                      "1",
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 84, 230, 91)),
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            size: 15,
                            color: Color.fromARGB(255, 84, 230, 91),
                          )),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
