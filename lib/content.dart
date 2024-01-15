// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gadgetecommerce/cart.dart';
import 'package:gadgetecommerce/components/container_need.dart';

import 'components/iconcontainer.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.shade100,
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
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
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconContainer(
                          icon: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 16,
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      IconContainer(
                          icon: Icon(
                        Icons.upload,
                        size: 16,
                      ))
                    ],
                  )
                ],
              ),
            ),
            Image.asset(
              "images/xbox2.png",
              scale: 4,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "XBox Series X",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red),
                        child: Text(
                          " % On Sale",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      EmptyContainer(
                        icon: Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                        ),
                        rating: "4.8",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      EmptyContainer(
                        icon: Icon(
                          Icons.thumb_up,
                          color: Color.fromARGB(255, 84, 230, 91),
                        ),
                        rating: "94%",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "117 Reviews",
                        style: TextStyle(color: Colors.grey.shade500),
                      )
                    ],
                  ),
                  Text(
                    """"
The Microsoft Xbox Series X gaming console is
capable of impressing with minimal boost times 
and mesmerizing visual effects when playing games at up to 120 frame per second
""",
                    style: TextStyle(fontSize: 16),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "1 TB",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "825 TB",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "512 TB",
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(bottom: 15, top: 15, left: 20, right: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "\$656.00",
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 16,
                        ),
                      ),
                      Text("\$570.00",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                          )),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CartPage();
                      }));
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 40, top: 15, bottom: 15, right: 40),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 84, 230, 91),
                          borderRadius: BorderRadius.circular(15)),
                      child: Text("Add to Cart",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
