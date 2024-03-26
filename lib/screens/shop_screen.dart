import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/const.dart';
import 'package:providerapp/model/coffee.dart';
import 'package:providerapp/model/coffee_shop.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void addTocart(Coffee coffee) {
      context.read<CoffeeShop>().addItemToCart(coffee);
    }

    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text(
              "How would you like your coffee to be?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),

            //all list of coffee
            const SizedBox(height: 25),
            Expanded(
                child: ListView.builder(
              itemCount: value.coffeeShop.length,
              itemBuilder: (context, index) {
                final eachcoffee = value.coffeeShop[index];
                return coffeeTile(
                  coffee: eachcoffee,
                  onPressed: () => addTocart(eachcoffee),
                );
              },
            ))
          ],
        ),
      )),
    );
  }
}
