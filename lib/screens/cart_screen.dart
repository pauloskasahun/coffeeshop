import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/model/coffee_shop.dart';

import '../const.dart';
import '../model/coffee.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void removeItem(Coffee coffee) {
      context.read<CoffeeShop>().removeItemFromcart(coffee);
    }

    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text(
              "Your Cart",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),

            //all list of coffee
            const SizedBox(height: 25),
            Expanded(
                child: ListView.builder(
              itemCount: value.userCart.length,
              itemBuilder: (context, index) {
                final eachcoffee = value.userCart[index];
                return cartTile(
                    coffee: eachcoffee,
                    onPressed: () => removeItem(eachcoffee),
                    iconData: Icons.delete);
              },
            ))
          ],
        ),
      )),
    );
  }
}
