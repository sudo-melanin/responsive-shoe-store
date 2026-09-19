import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_app/core/theme/app_theme.dart';
import 'package:shoe_app/providers/cart_provider.dart';
import 'package:shoe_app/pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CartProvider>(
      create: (context) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shoe App',
        theme: AppTheme.lightTheme,
        home: const HomeScreen(),
      ),
    );
  }
}
