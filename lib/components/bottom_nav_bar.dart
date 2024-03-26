import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:providerapp/const.dart';

class MyBottomNavBar extends StatelessWidget {
  final void Function(int)? onTabchange;
  const MyBottomNavBar({super.key, required this.onTabchange});
   
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: GNav(
          onTabChange: (value) => onTabchange!(value),
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          color: Colors.grey[400],
          activeColor: Colors.grey[700],
          tabBorderRadius: 24,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade300,
          tabs: navBarBtns,
    ));
  }
}
