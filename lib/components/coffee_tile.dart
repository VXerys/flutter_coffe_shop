import 'package:flutter/material.dart';
import 'package:flutter_coffe_shop/models/coffee.dart';

class CoffeeTile extends StatelessWidget {
  final Coffee coffee;
  void Function()? onPressed;
  final Widget icon;
  CoffeeTile({
    super.key,
    required this.coffee,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text('\$${coffee.price}'),
        leading: Image.asset(coffee.imagePath),
        trailing: IconButton(icon: icon, onPressed: onPressed),
      ),
    );
  }
}
