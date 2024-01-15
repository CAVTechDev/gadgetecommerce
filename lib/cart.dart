// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:gadgetecommerce/components/iconcontainer.dart';

import 'components/cart_container.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 10,
            right: 20,
            left: 20,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: IconContainer(
                        icon: Icon(
                      Icons.arrow_back_ios_new,
                      size: 16,
                    )),
                  ),
                  Text(
                    "My Cart",
                    style: TextStyle(fontSize: 16),
                  ),
                  IconContainer(
                      icon: Icon(
                    Icons.more_horiz,
                    size: 16,
                  ))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CartContainer(
                contentname: "X Box Series X",
                price: "\$570.00",
                size: "1TB",
                imagepath: "images/xbox1.png",
              ),
              Divider(
                thickness: 0.3,
              ),
              CartContainer(
                contentname: "Wireless Controller",
                price: "\$77.00",
                size: "Blue",
                imagepath: "images/controller.png",
              ),
              Divider(
                thickness: 0.3,
              ),
              CartContainer(
                contentname: "Razer Kaira Pro",
                price: "\$153.00",
                size: "Green",
                imagepath: "images/headset.png",
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ADJ3AK",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Row(
                      children: [
                        Text(
                          "Promocode applied",
                          style: TextStyle(
                              color: Color.fromARGB(255, 84, 230, 91)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.verified,
                          color: Color.fromARGB(255, 84, 230, 91),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal:",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "\$800.00",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery:",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "\$5.00",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discount:",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "40%",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 0.7,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, right: 30, left: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 84, 230, 91)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Checkout for",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "\$480.00",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
