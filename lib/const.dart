import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:providerapp/model/coffee.dart';
import 'package:providerapp/screens/analytics.dart';

import 'screens/cart_screen.dart';
import 'screens/shop_screen.dart';

var backGroundColor = Colors.grey[300];
List<Widget> pages = [
  const ShopScreen(),
  const CartScreen(),
  const Analys(),
  // const OrderScreen(),
];
List<GButton> navBarBtns = const [
  GButton(
    icon: Icons.home,
    text: 'Shop',
  ),
  GButton(
    icon: Icons.shopping_bag_outlined,
    text: 'Cart',
  ),
  GButton(
    icon: Icons.analytics_rounded,
    text: 'Analytics',
  ),
  // GButton(
  //   icon: CupertinoIcons.rectangle_fill_on_rectangle_angled_fill,
  //   text: 'orders',
  // )
];

Widget coffeeTile({Coffee? coffee, void Function()? onPressed}) {
  return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
          title: Text(coffee!.name),
          subtitle: Text(coffee.price.toString()),
          leading: Image.asset(coffee.imagePath),
          trailing: IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.add),
          )));
}
Widget cartTile({Coffee? coffee, void Function()? onPressed,IconData? iconData}) {
  return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
          title: Text(coffee!.name),
          subtitle: Text(coffee.price.toString()),
          leading: Image.asset(coffee.imagePath),
          trailing: IconButton(
            onPressed: onPressed,
            icon:  Icon(iconData),
          )));
}
