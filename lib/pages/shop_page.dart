import 'package:flutter/material.dart';
import 'package:flutter_coffe_shop/components/coffee_tile.dart';
import 'package:flutter_coffe_shop/models/coffee.dart';
import 'package:flutter_coffe_shop/models/coffee.shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(Coffee coffee) {
    Provider.of<CoffeShop>(context, listen: false).addItemToCart(coffee);

    showDialog(
      context: context,
      builder:
          (context) =>
              AlertDialog(content: Text("${coffee.name} added to cart")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(
      builder:
          (context, value, child) => SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "How would you like your coffee?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 20),

                  Expanded(
                    child: ListView.builder(
                      itemCount: value.coffeeShop.length,
                      itemBuilder: (context, index) {
                        Coffee eachCoffee = value.coffeeShop[index];

                        return CoffeeTile(
                          coffee: eachCoffee,
                          icon: Icon(Icons.add),
                          onPressed: () => addToCart(eachCoffee),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
