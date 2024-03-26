import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/model/coffee_shop.dart';

import 'app.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => CoffeeShop(),
      )
      
    ], child: const MyApp()),
  );
}
