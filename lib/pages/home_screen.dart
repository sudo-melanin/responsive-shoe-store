import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_app/pages/cart_page.dart';
import 'package:shoe_app/pages/product_list.dart';
import 'package:shoe_app/providers/cart_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final cartCount = context.watch<CartProvider>().cart.length;
    List<Widget> pages = const [ProductListPage(), CartPage()];

    return Scaffold(
      body: IndexedStack(index: currentPage, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        iconSize: 35,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        items: [
         const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ''),
          BottomNavigationBarItem(
            icon: Badge(
              isLabelVisible: cartCount > 0,
              label: Text(cartCount.toString()),
              child: Icon(Icons.shopping_cart)),
              label: ''),
        ],
      ),
    );
  }
}
