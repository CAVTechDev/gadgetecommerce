// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gadgetecommerce/categories.dart';
import 'package:gadgetecommerce/components/categorycont.dart';

import 'content.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Discover",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey.shade300),
                                shape: BoxShape.circle),
                            child: Icon(Icons.notifications_active_outlined),
                          ),
                          Positioned(
                            left: 25,
                            bottom: 26,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 84, 230, 91),
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                '3',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ]),
                SizedBox(
                  height: 20,
                ),

                //search box
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    fillColor: Colors.grey.shade50,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade500),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: "Search",
                    labelStyle: TextStyle(color: Colors.grey.shade300),
                    suffixIcon: Icon(CupertinoIcons.search),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                //clearance container
                Container(
                  width: 400,
                  height: 160,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 84, 230, 91),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Container(
                      padding: EdgeInsets.only(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                """Clearance
      Sales""",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.5),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Text(
                                  "% Up to 50%",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 84, 230, 91),
                                    fontSize: 15,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 250,
                            width: 220,
                            child: Image.asset(
                              "images/iphone.png",
                              scale: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //categories
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(fontSize: 18),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "See all",
                          style: TextStyle(
                              color: Color.fromARGB(255, 84, 230, 91),
                              fontSize: 16),
                        )),
                  ],
                ),
                SizedBox(
                  height: 40,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Categories(categoryname: "All"),
                      SizedBox(
                        width: 10,
                      ),
                      Categories(categoryname: "Smartphones"),
                      SizedBox(
                        width: 10,
                      ),
                      Categories(categoryname: "Headphones"),
                      SizedBox(
                        width: 10,
                      ),
                      Categories(categoryname: "Laptops"),
                      SizedBox(
                        width: 10,
                      ),
                      Categories(categoryname: "Electronics"),
                      SizedBox(
                        width: 10,
                      ),
                      Categories(categoryname: "Game Gadgets"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //objects
                Container(
                    height: MediaQuery.of(context).size.height / 1.0,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.white),
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        Row(
                          children: [
                            //outer container
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return ContentPage();
                                }));
                              },
                              child: CategoryContainer(
                                imagepath: "images/airpods.png",
                                name: "AirPods",
                                rating: "4.9",
                                price: "\$132.00",
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            CategoryContainer(
                              imagepath: "images/macbook.png",
                              name: "MacBook Air 13",
                              rating: "5.0",
                              price: "\$1100.00",
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            //outer container
                            CategoryContainer(
                              imagepath: "images/xbox1.png",
                              name: "XBox Series X",
                              rating: "4.9",
                              price: "\$572.00",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            CategoryContainer(
                              imagepath: "images/iphone11.png",
                              name: "Iphone 11",
                              rating: "4.3",
                              price: "\$1300.00",
                            ),
                          ],
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
