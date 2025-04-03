import 'package:flutter_coffe_shop/models/coffee.dart';

class CoffeShop {
  final List<Coffee> _shop = [
    Coffee(
      name: 'Cappuccino',
      price: "4.99",
      imagePath: 'lib/images/coffee.png',
    ),
    Coffee(
      name: 'Expresso',
      price: "6.99",
      imagePath: 'lib/images/expresso.png',
    ),
    Coffee(
      name: 'Latte de Cappuccino',
      price: "7.99",
      imagePath: 'lib/images/latte-art.png',
    ),
    Coffee(
      name: 'Iced de Cappuccino',
      price: "3.99",
      imagePath: 'lib/images/iced-latte.png',
    ),
    Coffee(
      name: 'Milkshake with Cappuccino',
      price: "5.49",
      imagePath: 'lib/images/milkshake.png',
    ),
  ];

  List<Coffee> _userCart = [];

  List<Coffee> get coffeeShop => _shop;
  List<Coffee> get userCart => _userCart;

  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
  }

  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
  }
}
