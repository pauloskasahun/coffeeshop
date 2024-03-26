import 'package:flutter/material.dart';
import 'package:providerapp/model/coffee.dart';

class CoffeeShop extends ChangeNotifier {
  //list of coffee for sale

  final List<Coffee> _shop = [
    Coffee(
        name: 'Black Coffee',
        imagePath: 'assets/images/coffee-cup.png',
        price: 28),
    Coffee(name: 'Late', imagePath: 'assets/images/latte.png', price: 48),
    Coffee(
        name: 'Iced Coffee', imagePath: 'assets/images/iced-coffee.png', price: 18),
    Coffee(
        name: 'Espresso', imagePath: 'assets/images/espresso.png', price: 25),
  ];
  //user cart
  final List<Coffee> _userCart = [];
  //get coffee list
  List<Coffee> get coffeeShop => _shop;
  //get user cart;
  List<Coffee> get userCart => _userCart;
  // add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromcart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
