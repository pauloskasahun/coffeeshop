import 'package:flutter/material.dart';
import 'package:providerapp/components/bottom_nav_bar.dart';
import 'package:providerapp/const.dart';

class MyAppView extends StatefulWidget {
  const MyAppView({super.key});

  @override
  State<MyAppView> createState() => _MyAppViewState();
}

class _MyAppViewState extends State<MyAppView> {
  int selectedIndex = 0;
  ScrollController? controller;

  void navigateBottombar(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      
      bottomNavigationBar: MyBottomNavBar(
        onTabchange: (index) => navigateBottombar(index),
      ),
      body: pages[selectedIndex],
    );
  }
}
