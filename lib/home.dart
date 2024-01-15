// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gadgetecommerce/real_home.dart';

class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          indicatorColor: Color.fromARGB(255, 84, 230, 91),
          backgroundColor: Colors.white,
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.home_outlined), label: "Home"),
            NavigationDestination(
                selectedIcon: Icon(Icons.search_rounded),
                icon: Icon(Icons.search_outlined),
                label: "Search"),
            NavigationDestination(
                icon: Icon(CupertinoIcons.heart), label: "Favourites"),
            NavigationDestination(
                icon: Icon(CupertinoIcons.person), label: "Profile"),
          ],
        ),
        body: [
          HomePage(),
          Container(),
          Container(),
          Container(),
        ][currentPageIndex]);
  }
}
