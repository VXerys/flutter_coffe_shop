import 'package:flutter/material.dart';
import 'package:flutter_coffe_shop/components/bottom_nav_bar.dart';
import 'package:flutter_coffe_shop/const.dart';
import 'package:flutter_coffe_shop/pages/cart_page.dart';
import 'package:flutter_coffe_shop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _page = [ShopPage(), CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) {
          navigateBottomBar(index);
        },
      ),
      body: _page[_selectedIndex],
    );
  }
}
