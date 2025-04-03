import 'package:flutter/material.dart';
import 'package:flutter_coffe_shop/models/coffee.shop.dart';
import 'package:flutter_coffe_shop/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoffeShop(),
      builder:
          (context, child) => const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomePage(),
          ),
    );
  }
}
