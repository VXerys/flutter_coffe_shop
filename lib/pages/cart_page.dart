import 'package:flutter/material.dart';
import 'package:flutter_coffe_shop/components/coffee_tile.dart';
import 'package:flutter_coffe_shop/models/coffee.dart';
import 'package:flutter_coffe_shop/models/coffee.shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeShop>(context, listen: false).removeItemFromCart(coffee);
  }

  void payNow() {}

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(
      builder:
          (context, value, child) => SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("Your Cart", style: TextStyle(fontSize: 20)),
                  Expanded(
                    child: ListView.builder(
                      itemCount: value.userCart.length,
                      itemBuilder: (context, index) {
                        Coffee eachCoffee = value.userCart[index];
                        return CoffeeTile(
                          coffee: eachCoffee,
                          icon: Icon(Icons.delete),
                          onPressed: () => removeFromCart(eachCoffee),
                        );
                      },
                    ),
                  ),

                  GestureDetector(
                    onTap: () => payNow(),
                    child: Container(
                      padding: EdgeInsets.all(25),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          "Pay Now",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
